class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sessionHandler
  def sessionHandler
   if session['session_id']
    begin
     @session_id = ItemTotal.find(session['session_id'])

    rescue
     @session_id = ItemTotal.create
     session['session_id'] = @session_id.id
    end

    else
      @session_id = ItemTotal.create
      session['session_id'] = @session_id.id
   end
  end

  def index
      @menu_item = MenuItem.all
      render 'index_page/home.html.erb'
      @total_cals =  @session_id.counts.map{|kazoo| kazoo.count.get_calories}.sum
      @total_price = @session_id.counts.map{|wazoo| wazoo.count.get_price}.sum
  end
end
