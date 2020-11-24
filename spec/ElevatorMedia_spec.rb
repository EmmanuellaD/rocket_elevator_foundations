require 'ElevatorMedia'
require 'rspec'
require 'spec_helper'
require 'net/http'
require 'openssl'
require 'uri'

describe ElevatorMedia do
    describe 'getContent' do
     it 'should return a html' do
        media = ElevatorMedia::Streamer.new
        expect (media.getContent)
      end
    end

end