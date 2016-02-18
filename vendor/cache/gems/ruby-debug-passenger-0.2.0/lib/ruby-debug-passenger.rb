require "ruby-debug-passenger/version"
require "rails"

module RubyDebugPassenger
  class Railtie < Rails::Railtie

    # Initializer
    initializer "ruby-debug-passenger" do
      # When Passenger starts the app, this checks if debug.txt exists, and if
      # so it waits for the debugger to connect before continuing. It will only
      # ever run in the development environment (for safety more than anything
      # else).
      if Rails.env.development? && File.exists?(File.join(Rails.root, 'tmp', 'debug.txt'))
        begin
          require 'byebug'
        rescue LoadError
          raise "'byebug' gem must be present when using 'ruby-debug-passenger'"
        end if RUBY_VERSION.start_with?('2.0')

        begin
          require 'debugger'
        rescue LoadError
          raise "'debugger' gem must be present when using 'ruby-debug-passenger'"
        end if RUBY_VERSION.start_with?('1.9')

        begin
          require 'ruby-debug'
        rescue LoadError
          raise "'ruby-debug' gem must be present when using 'ruby-debug-passenger'"
        end if RUBY_VERSION.start_with?('1.8')

        File.delete(File.join(Rails.root, 'tmp', 'debug.txt'))

        if RUBY_VERSION < '2.0'
          Debugger.wait_connection = true
          Debugger.start_remote
        else
          Byebug.wait_connection = true
          Byebug.start_server
        end
      end
    end

    # Rake task
    rake_tasks do
      load "tasks/debug.rake"
    end

  end
end
