#app/controllers/users_controller.rb

# creating the users controller
# this file will connect to the app/views/users/new.html.erb
class UsersController < ApplicationController

  # add a new action (for rendering the signup form)
  # and a create action for recieving the form and creating a user with the forms parameters

  def new
  end

  # adding in logic for the create action
  def create 
    puts 'above line 16'
    user = User.new(user_params)
    puts 'stored user'
    puts user.inspect
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
  end
end

#adding private method to sanitizze the input fom the form 
private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end


