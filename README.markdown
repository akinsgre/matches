This application was created as an example for the DataTables JQuery Plugin.  I later added a couple controllers and views to experiment with using ThingSpeak.

DataTables
-----------

The page which utilizes DataTables is configured as root.  If you simply go to the root page, you'll see an empty DataTables grid.  There aren't any CRUD controllers, so use 'rails console' if you want to add data.

ThingSpeak
------------

/temps - a index page which shows the list of values retrieved from ThingSpeak channel 1557 and a Google Chart (Using JQuery Google Charts http://maxb.net/scripts/jgcharts/include/demo )
/temps/data.json - the raw json feed from thingspeak used in the Ajax call from /temps/index.html.erb

monitor.rb
---------
I also included a script to post data to the ThingSpeak API.  This particular script takes a CPU temp reading usint "Temperature Monitor" (http://www.bresink.com/osx/TemperatureMonitor.html).  You'll need to download and install that before using the script.  Of course, you could modify the script to use any command that returns a single numeric representation of temperature.  The return value of that script os posted to the channel.

