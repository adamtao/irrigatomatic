# Use this file to easily define all of your cron jobs.
#
# Learn more: http://github.com/javan/whenever

# First, make sure zones are off before turning them on
every '00 1-6,10 * * *' do
	runner "Zone.all_off"
end

# Twice a week in May
every '05 1 * 5 0,4' do
	runner "Zone.new(1).turn_on"
end
every '05 2 * 5 1,5' do
	runner "Zone.new(2).turn_on"
end
every '05 3 * 5 2,6' do
	runner "Zone.new(3).turn_on"
end
every '05 4 * 5 3,0' do
	runner "Zone.new(4).turn_on"
end

# Every other day in June, July, August
every '05 1 1-31/2 6,7,8 *' do
	runner "Zone.new(1).turn_on"
end
every '05 2 1-31/2 6,7,8 *' do
	runner "Zone.new(2).turn_on"
end
every '05 3 1-31/2 6,7,8 *' do
	runner "Zone.new(3).turn_on"
end
every '05 4 1-31/2 6,7,8 *' do
	runner "Zone.new(4).turn_on"
end

# Every third day in September
every '05 1 1-31/3 9 *' do
	runner "Zone.new(1).turn_on"
end
every '05 2 1-31/3 9 *' do
	runner "Zone.new(2).turn_on"
end
every '05 3 1-31/3 9 *' do
	runner "Zone.new(3).turn_on"
end
every '05 4 1-31/3 9 *' do
	runner "Zone.new(4).turn_on"
end