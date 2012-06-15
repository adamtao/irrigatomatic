namespace :zone do 

	desc "Turn on sprinklers (one zone), invoke with: rake zone:turn_on number=1"
	task :turn_on => :environment do
		Zone.new(ENV['number']).turn_on
	end

	desc "Turn off sprinklers (one zone), invoke with: rake zone:turn_orr number=1"
	task :turn_off => :environment do
		Zone.new(ENV['number']).turn_off
	end
	
	desc "Turn off ALL zones"
	task :all_off => :environment do
		Zone.all_off
	end
end