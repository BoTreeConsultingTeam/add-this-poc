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
  
  def my_method
    send_file Rails.root.join("public", "track.png"), type: "image/png", disposition: "inline"
    puts "=============================#{params[:value1]}"
    puts "=============================#{params[:valu2]}"
    puts "=============================#{params[:value3]}"
    puts "======================cookies_id: #{cookies[:username]}"
    puts request.headers["Accept"]
    puts request.headers["Host"]
    puts request.headers["User-Agent"]
  end
  
end
