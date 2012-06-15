irrigatomatic
=============

This is a sample rails application utilizing rain8net to control sprinklers
making use of the rain8net gem which controls a Rain8net irrigation controller.

https://github.com/adamtao/rain8net

If you've always wanted to remote control your sprinklers with your computer,
then you've come to the right place. 

To use the rails application, just adjust your settings in
config/initializers/rain8net.rb

The sample rails application also makes use of the yahoo_weatherman gem. You'll
want to update the WOEID in the rain8net.rb initializer in order to check the 
weather in your area (instead of mine). I don't remember where I got the WOEID, 
but I'll be you can find it easily enough. Doing so should avoid watering on rainy 
days or even the day before a rainy day.

If you actually want to control your sprinklers using this app, you'll need a Rain8net
irrigation controller and a spare computer with a serial port. I've only tested with 
Linux (redhat varieties).

Hook it all up, deploy this app, hit the URL on the localhost or even some other host 
on your network. Then, go outside with some wifi device and let the neighbors see 
how cool you are.

There's even a schedule file which, when deployed, should update your crontab to
run sprinklers for you in the middle of the night.
