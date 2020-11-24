require 'ElevatorMedia'
require 'rails_helper'
require 'rspec'
require 'spec_helper'
require 'net/http'
require 'openssl'
require 'uri'


describe 'ElevatorMedia' do
    describe 'getContent' do
     it 'should return' do
        media = ElevatorMedia::Streamer.new
        expect(media.getContent()).to be_a(String)
        pp media.getContent()
      end
    end
  end
  describe 'apiRequest' do
    it 'return specific joke'do
      media2= ElevatorMedia::Streamer.new
      expect(media2.apiTest)
      pp media2.apiTest
    end
  end
  describe  'changeJokeFormat' do
    it'extract joke' do
    media3= ElevatorMedia::Streamer.new
    expect(media3.changeJokeFormat)
    pp media3.changeJokeFormat
    end
  end
  
