require 'net/http'
require 'nokogiri'

dir = File.dirname(__FILE__)
local_filename = dir + "/temps.txt"

  while true do
    # geturi = URI.parse "http://api.thingspeak.com/apps/thinghttp/send_request?api_key=6NC5BBE84EO1VZFY"
    # http = Net::HTTP.new(geturi.host)
    # request = Net::HTTP::Get.new(geturi.request_uri)
    # request["Content-Type"] = "text/xml"
    # response = http.request(request)
    # doc = Nokogiri::XML(response.body)
    # output = doc.text
    
    output = %x[/Applications/TemperatureMonitor.app//Contents/MacOS/tempmonitor -f | awk '{print $1}']  

    posturi = URI.parse("http://localhost:3000/update")
    post_args = {"key" => "Q384RIIQ10CLMZ9V", "field1" => output, "field2" => output}
    response = Net::HTTP.post_form(posturi, post_args)
    puts output + " posted as " + response.code.to_s

    sleep 500
  end


