require 'net/http'

dir = File.dirname(__FILE__)
local_filename = dir + "/temps.txt"

  while true do
    output = %x[/Applications/TemperatureMonitor.app//Contents/MacOS/tempmonitor -f | awk '{print $1}']  

    uri = URI.parse("http://api.thingspeak.com/update")
    post_args = {"key" => "ZU057XDYNZ1Q1U44", "field1" => output}
    response = Net::HTTP.post_form(uri, post_args)
    puts output + " posted as " + response.code.to_s
    sleep 900
  end


