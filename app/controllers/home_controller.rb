class HomeController < ApplicationController
 before_action :common_content, :only => [:index, :team]
 
 def common_content
   @hero_name = Faker::Superhero.name
   @hero_power = Faker::Superhero.power
   @hero_prefix = Faker::Superhero.prefix
   @rand_num = rand(1..1000)
   @set_num = "set" + rand(1..4).to_s
   
   @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", @set_num, "bg1")
 end
 
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
end
