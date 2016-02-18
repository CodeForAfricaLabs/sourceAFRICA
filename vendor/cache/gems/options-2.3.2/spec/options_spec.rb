require File.dirname(__FILE__) + "/spec_helper"
require 'options'

describe Options do 
  describe "parsing" do 
    it "should be able to handle an options hash" do 
      opts = Options.parse({:this => 'that'})
      opts.getopt(:this).should eql('that')
    end

    it "should be able to handle args list w/ options hash" do 
      args, opts = Options.parse([:foo, {:this => 'that'}])
      opts.getopt(:this).should eql('that')
      args.should eql([:foo])
    end
  end

  describe "validation" do 
    it "should be able to detect extraneous options" do 
      lambda{
        Options.parse({:this => 'test'}).validate(:foo, :bar)
      }.should raise_error(ArgumentError, "Unrecognized options: this")
    end

    it "should list all extraneous options in message" do 
      lambda{
        Options.parse({:this => 'test', :that => 'test'}).validate(:foo)
      }.should raise_error(ArgumentError, "Unrecognized options: that, this")
    end

    it "should accept options from simple list" do 
      lambda{
        Options.parse({:foo => 'this', :bar => 'that'}).validate(:foo, :bar)
      }.should_not raise_error
    end

  end
end
