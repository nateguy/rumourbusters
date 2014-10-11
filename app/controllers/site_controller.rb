class SiteController < ApplicationController

  def index #listing of the following items
    @rumours = Rumour.all



  end


  def privacy #static page
  end

  def terms
  end

  def about
  #     flash.now[:alert] = "About"
  end

end