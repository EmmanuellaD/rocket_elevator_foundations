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
      media2= ElevatorMedia::Streamer.new
      expect(media2.getContent).to include("div")
      pp (media2.getContent)
    end
  end
  describe 'nextJokeButton' do
    it'should show the next joke on click' do
      expect(nextJokeButton)
    end
  end
end

 
  
