require 'options'

# options.rb makes it easy to provide good error messages when people
# misuse a method.
#

  def method(*args)
    args, options = Options.parse(args)
    options.validate(:force)

    force = options.getopt(:force, default=false)
    p force
  end

  method(:foo, :bar, :misspelled_option => true)


