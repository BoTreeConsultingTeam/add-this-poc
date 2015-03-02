class PopupsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :js

  def show
    respond_to do |format|
      format.js
    end
  end

  def ajax
  	@first_name=params[:fname]
  	@last_name=params[:lname]
  	puts "=============================First Name:#{@first_name}"
  	puts "=============================Lirst Name:#{@last_name}"
  	render :text => 'OK!'	
  end

end
