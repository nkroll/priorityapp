class FiltersController < ApplicationController
  before_filter :signed_in_user

  private
  def signed_in_user
    redirect_to new_session_path, notice: "Please sign in." unless session[:user_id].present?
  end
    
end