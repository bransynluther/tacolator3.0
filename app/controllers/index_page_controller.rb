class IndexPageController < ApplicationController
  def home
  end



  def index
   @menu_item = MenuItem.all
     render :template => 'index_page/real_home'
  end
end
