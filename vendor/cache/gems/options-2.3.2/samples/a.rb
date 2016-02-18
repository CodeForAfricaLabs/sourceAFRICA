require 'options'

# options.rb makes it super easy to deal with keyword options in a safe and
# easy way.
#

  def method(*args)
    args, options = Options.parse(args)

    force = options.getopt(:force, default=false)
    p force
  end

  method(:foo, :bar, :force => true)
  method('force' => true)
