require 'net/http'

class TempsController < ApplicationController
  respond_to :json
  def data
    uri = URI.parse('http://api.thingspeak.com/channels/1557/feed.json')
    post_args = { 'key' => 'ZU057XDYNZ1Q1U44' }
    # send the request
    response = Net::HTTP.post_form uri, post_args

    respond_with do |format|
      format.json {
        render :json => response.body
      }
    end
  end

  def index
    
  end

end
