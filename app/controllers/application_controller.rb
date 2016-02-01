class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @res = Amazon::Ecs.item_search("",
      :search_index => 'Books',
      :response_group => 'Medium'
      :country => 'jp'
      )
  end

end
