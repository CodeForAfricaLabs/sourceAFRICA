desc "Restart the app with debugging enabled, then launch the debugger"
task :debug do

  begin
    require 'byebug'
  rescue LoadError
    puts "'byebug' gem must be present for this task to work"
    exit 1
  end if RUBY_VERSION.start_with?('2.0')

  begin
    require 'debugger'
  rescue LoadError
    puts "'debugger' gem must be present for this task to work"
    exit 1
  end if RUBY_VERSION.start_with?('1.9')

  begin
    require 'ruby-debug'
  rescue LoadError
    puts "'ruby-debug' gem must be present for this task to work"
    exit 1
  end if RUBY_VERSION.start_with?('1.8')

  # This instructs the app to wait for the debugger to connect after loading
  FileUtils.touch(File.join(Rails.root, 'tmp', 'debug.txt'))

  # Instruct Phusion Passenger to restart the app
  FileUtils.touch(File.join(Rails.root, 'tmp', 'restart.txt'))

  # Wait for it to restart (requires the user to load a page)
  puts "Waiting for restart (please reload the app in your web browser)..."
  begin
    while File.exists?(File.join(Rails.root, 'tmp', 'debug.txt'))
      sleep 0.5
    end
    sleep 1
  rescue Interrupt
    File.delete(File.join(Rails.root, 'tmp', 'debug.txt'))
    puts "\rCancelled."
    exit 1
  end

  if RUBY_VERSION < '2.0'
    puts "Loading debugger..."
  else
    puts "Loading byebug..."
  end

  begin
    if RUBY_VERSION < '2.0'
      Debugger.start_client
    else
      Byebug.start_client
    end
  rescue Interrupt
    # Clear the "^C" that is displayed when you press Ctrl-C
    puts "\r\e[0KDisconnected."
  end

end
