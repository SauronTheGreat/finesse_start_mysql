task :truncate =>:environment do
  desc :"This is a simple rake task truncate all the models oin a project"


  Dir.chdir("#{Dir.pwd}/app/models")
  #this array contains list of all models in the project
  @models=Array.new

  Dir.foreach(".") do |entry|
    if entry.include?(".rb")
      entry.slice!(".rb")
      @models << entry.tableize
    end
  end
  #this takes all the models and converts the name to the database table equivalent

  @models.each do |model|
    sql="truncate table #{model}"
    ActiveRecord::Base.connection.execute(sql)
  end

  #this executes a simple sql statement

end

