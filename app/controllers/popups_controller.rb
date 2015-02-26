class PopupsController < ApplicationController
  respond_to :js

  def show
    respond_to do |format|
      format.js
    end
  end
end
