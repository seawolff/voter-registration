namespace :load_states do
  desc "Load state guidelines"
  task :guidelines, [:file, :locale] => :environment do |t, args|
    args.with_defaults(:file => "state_info_en.yml", :locale => "en")

    a = YAML::load(File.open("data/#{args.file}"))
    a["children"].each do |state|
      @info = Guidelines.new
      @info.locale = args.locale
      @info.state = state["slug"]
      @info.name = state["title"]
      state["children"].each do |info|
        if info["slug"] == "registration_requirements"
          @info.requirements = info["body"]
        elsif info["slug"] == "felony_info"
          @info.felony = info["body"]
        elsif info["slug"] == "student_info"
          @info.student = info["body"]
        elsif info["slug"] == "deadline_info"
          @info.deadline = info["body"]
        elsif info["slug"] == "id_info"
          @info.identification = info["body"]
        elsif info["slug"] == "same_day_registration_info"
          @info.same_day = info["body"]
        elsif info["slug"] == "early_voting_info"
          @info.early_voting = info["body"]
        elsif info["slug"] == "url"
          @info.url = info["body"]
        elsif info["slug"] == "online"
          @info.online = info["body"]
        elsif info["slug"] == "online_requirements"
          @info.online_requirements = info["body"]
        elsif info["slug"] == "online_url"
          @info.online_url = info["body"]
        end
      end
      @info.save
    end
    puts "#{Guidelines.count} states loaded "
  end

  desc "Load state instructions"
  task :instructions => :environment do
    a = YAML::load(File.open("data/instructions.yml"))
    a['state'].each do |state|
      Instructions.create(state)
    end
    puts "#{Instructions.count} state instructions loaded"
  end

  desc "Load state deadlines"
  task :deadlines => :environment do
    a = JSON.load(File.read("data/state_deadlines.en.json"))
    count = 0
    a.each do |state|
      @guidelines = Guidelines.find_by_state(state[0])
      @guidelines.update_attributes(:deadline => state[1])
      if @guidelines.save
        count = count+1
      end
    end
    puts "#{count} state deadlines loaded"
  end

  desc "Load all state information (:guidelines, :instructions, :deadlines)"
  task :all => [:guidelines, :instructions, :deadlines]
end
