require 'options'

# options.rb avoids common mistakes made handling keyword arguments
#

  def broken(*args)
    options = args.last.is_a?(Hash) ? args.pop : {}
    if options[:force]
      puts 'forcing'
    else
      puts 'broken'
    end
  end

  def nonbroken(*args)
    args, options = Options.parse(args)
    if options.getopt(:force)
      puts 'nonbroken'
    end
  end

  broken('force' => true)
  nonbroken('force' => true)



  def fubar(*args)
    options = args.last.is_a?(Hash) ? args.pop : {}
    verbose = options[:verbose] || true
    if verbose 
      if options[:verbose]
        puts 'verbosely'
      else
        puts 'fubar'
      end
    end
  end

  def nonfubar(*args)
    args, options = Options.parse(args)
    verbose = options.getopt(:verbose)
    if verbose 
      puts 'verbosely'
    else
      puts 'nonfubar'
    end
  end

  fubar(:verbose => false)
  nonfubar(:verbose => false)
