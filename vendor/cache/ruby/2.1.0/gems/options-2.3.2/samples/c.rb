require 'options'

# options.rb hacks ruby core in exactly one way - the method Array#options
#

  def method(*args)
    options = args.options
    p :args => args
    p :options => options
  end

  method(:a, :b, :k => :v)

  def method2(*args)
    options = args.options.pop
    p :args => args
    p :options => options
  end

  method2(:a, :b, :k => :v)
