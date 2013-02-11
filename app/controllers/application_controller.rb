class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  before_filter { @wiki_word = Word.order("RANDOM()").first }

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
end
