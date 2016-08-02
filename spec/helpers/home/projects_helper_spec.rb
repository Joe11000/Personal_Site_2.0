require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the Home::ProjectsHelper. For example:
#
# describe Home::ProjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe Home::ProjectsHelper, :type => :helper do

  class Awesome
    attr_reader :whoisawesome

    def initialize whoisawesome
      @whoisawesome = whoisawesome
    end

    def say_it
      "#{whoisawesome} is awesome!"
    end

    def self.info
      "I say who is awesome"
    end
  end


  subject(:joe) { Awesome.new "Joe"}

  # does is observe or intercept?
  # does spying still allow original functionality

  context "object" do
    it "determines if call received" do
      awesome_spy = spy('joe')
      awesome_spy.say_it
      expect(awesome_spy).to have_received(:say_it)
    end

    # it "stays out of the way" do
    #   awesome_spy = spy('awesome')
    #   expect(awesome_spy.say_it).to eq "Joe is awesome!"
    # end
  end


  context "class" do
    it "determines if call received" do
      awesome_spy = spy('awesome')
      awesome_spy.info
      expect(awesome_spy).to have_received(:info)
    end

    it "stays out of the way" do
      expect(Awesome).to receive(:info).and_call_original
      # debugger
      expect(Awesome.info).to eq "I say who is awesome"
      expect(Awesome).to have_received(:info)

    end
  end


end
