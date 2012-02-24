class SessionsController < ApplicationController
  def new
    if session[:user_id].present?
      redirect_to tasks_url
    end
  end
  
  def create
    reset_session
    user = User.find_by_email(params[:email])
    if user.present?
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to new_task_path, :notice => "Welcome Back #{user.first_name}!"
      else
        redirect_to new_session_url, :notice => "Sorry! Try Again!"
      end
    else
      redirect_to new_session_url, :notice => "Sorry! Try Again!"
    end
  end
  
  def logout
    reset_session
    redirect_to root_path
  end
end