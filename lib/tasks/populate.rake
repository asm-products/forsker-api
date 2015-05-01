namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require "populator"
    require "faker"
    
    [Group, Scientist, Event, Position, Keyword, KeywordAssignment].each(&:delete_all)

    Group.populate 30 do |group|
		group.name   		 = Faker::Commerce.department(2, true)
		group.university 	 = Faker::Company.name			
		group.active 		 = true						
		group.about 	 = Faker::Lorem.sentences(rand(4..10)).join(" ")		
		group.country 	 = Faker::Address.country			
		group.city 		 = Faker::Address.city
		group.zip_code 	 = Faker::Address.zip_code		
		group.telephone	 = Faker::PhoneNumber.cell_phone			
		group.email 	 = Faker::Internet.email		
		group.fax 		 = Faker::PhoneNumber.cell_phone		
		group.website 	 = Faker::Internet.url							
		group.logo_url 	 = Faker::Internet.url

		Faker::Lorem.words(rand(1..3)).each do |key|
			d = Faker::Lorem.sentences(rand(3)).join(" ")
			k = Keyword.find_by_name(key)
			k = Keyword.create!(name: key.downcase.parameterize, description: d) unless k
		   	KeywordAssignment.create!(keyword_id: k.id, group_id: group.id)
		end 

      	Scientist.populate 3 do |scientist|
      		scientist.first_name 		= Faker::Name.first_name
			scientist.last_name			= Faker::Name.last_name
			scientist.prefix			= Faker::Name.prefix
			scientist.position 			= Faker::Name.title
			scientist.in_group_since	= Faker::Time.between(2.years.ago, Time.now)
			scientist.image				= Faker::Avatar.image
			scientist.website			= Faker::Internet.url
			scientist.twitter			= Faker::Internet.url
			scientist.linkedin			= Faker::Internet.url
			scientist.google_scholar	= Faker::Internet.url
			scientist.email				= Faker::Internet.email
			scientist.telephone	 		= Faker::PhoneNumber.cell_phone			
			scientist.about				= Faker::Lorem.sentences(rand(4..10)).join(" ")
			scientist.group_id			= group.id

			Faker::Lorem.words(rand(1..3)).each do |key|
				d = Faker::Lorem.sentences(rand(3)).join(" ")
				k = Keyword.find_by_name(key)
				k = Keyword.create!(name: key.downcase.parameterize, description: d) unless k
			   	KeywordAssignment.create!(keyword_id: k.id, scientist_id: scientist.id)
			end 

      	end

      	Event.populate 3 do |event|
			event.name  		= Faker::Lorem.words(rand(3..7)).join(" ")
			event.start_date  = Faker::Time.between(2.years.ago, Time.now)
			event.end_date 	= Faker::Time.between(2.years.ago, Time.now)
			event.link  		= Faker::Internet.url
			event.about 		= Faker::Lorem.sentences(rand(4..10)).join(" ")
			event.logo 		= Faker::Internet.url
			event.group_id	= group.id

			Faker::Lorem.words(rand(1..3)).each do |key|
				d = Faker::Lorem.sentences(rand(3)).join(" ")
				k = Keyword.find_by_name(key)
				k = Keyword.create!(name: key.downcase.parameterize, description: d) unless k
			   	KeywordAssignment.create!(keyword_id: k.id, event_id: event.id)
			end 

      	end

      	Position.populate 3 do |position|
			position.name 		= Faker::Lorem.words(rand(3..7)).join(" ")
			position.description 	= Faker::Lorem.sentences(rand(4..10)).join(" ")
			position.start_date	= Faker::Time.between(2.years.ago, Time.now)
			position.deadline		= Faker::Time.between(2.years.ago, Time.now)
			position.link 		= Faker::Internet.url
			position.group_id     = group.id	

			Faker::Lorem.words(rand(1..3)).each do |key|
				d = Faker::Lorem.sentences(rand(3)).join(" ")
				k = Keyword.find_by_name(key)
				k = Keyword.create!(name: key.downcase.parameterize, description: d) unless k
			   	KeywordAssignment.create!(keyword_id: k.id, position_id: position.id)
			end 	  

      	end			
    end
  end
end

      
      
      
      
      
      
      
      
      
      
      
      
      
      