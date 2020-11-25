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
      it "includes a link to new" do
      media2= ElevatorMedia::Streamer.new
      expect(media2).to be_truthy
      # expect(NextJokeButton.request.path_parameters[:action]).to be_nil
  end
      # expect(nextJokeButton).to eq()

  end
end

 
  
