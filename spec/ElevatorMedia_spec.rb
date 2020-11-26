require 'ElevatorMedia'
require 'rails_helper'
require 'rspec'
require 'spec_helper'
require 'net/http'
require 'openssl'
require 'uri'


describe 'ElevatorMedia' do
  describe 'getContent' do
    it 'return specific joke'do
      media= ElevatorMedia::Streamer.new
      expect(media.getContent).to include("div")
      pp (media.getContent)
    end
  end
  describe 'NextJokeButton' do
    it "shows new joke when clicked" do
      media2= ElevatorMedia::Streamer.new
      expect(media2).to be_truthy
    end

  end
end

 
  
