

class GreeterController < ApplicationController
	include HTTParty
	base_url 'https://api.coursera.org/api/catalog.v1/courses'
	default_params fields: "samllIcon,shortDescription",q: "search"
	format :json
	
  def hello
  	random_names = ['Alex','Joe','Michael']
  	@name = random_names.sample
  	@time = Time.now
  	@times_displayed ||= 0
  	@times_displayed += 1
  end
  def goodbye
  	
  end
end
