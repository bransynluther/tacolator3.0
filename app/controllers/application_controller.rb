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
end
