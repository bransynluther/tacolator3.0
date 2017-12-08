class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sessionHandler
  def sessionHandler
   if session['ses_id']
    begin
     @session_id = ItemTotal.find(session['ses_id'])
     puts session['ses_id']
    rescue
     @session_id = ItemTotal.create
     session['ses_id'] = @session_id.id
    puts session['ses_id']

    end

    else
      @session_id = ItemTotal.create
      session['ses_id'] = @session_id.id
          puts session['ses_id']

   end
  end

  def index
      @menu_item = MenuItem.all
      @total_cals =  @session_id.counts.map{|kazoo| kazoo.get_calories}.sum
        @total_price =  @session_id.counts.map{|kazoo| kazoo.get_price}.sum
      render 'index_page/home.html.erb'
       end
  def get_increment
     @session_id.increment(params[:id])
     redirect_to action: 'index'
  end
  def get_decrement
     @session_id.decrement(params[:id])
     redirect_to action: 'index'
  end

end
