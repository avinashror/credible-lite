class Api::SchoolsController < ApplicationApiController
  def index
  	if(params[:term])
    	@schools = School.search(params[:term])
    else
    	@schools = School.all
    end	
    render :json => @schools.map{|s| s.instnm}.to_json
  end

end
