class UsersController < ApplicationController
  # Index Section
  def index
    @users = User.all.order({ :username => :asc })

    render({ :template => "users/index.html.erb" })
  end

  # # User sign in & sign up section
  # def new_registration_form
  #   render({ :template => "users/sign_up_form.html.erb" })
  # end

  # def user_sign_out
  #   reset_session

  #   redirect_to("/", { :notice => "See you next time"})
  # end

  # def new_session_form
  #   render({ :template =>"users/sign_in_form.html.erb"})
  # end

  # def authenticate
  #   # Get the username and Password from params
  #   username = params.fetch("input_username")
  #   password = params.fetch("input_password")

  #   # look up the record from the db matching username
  #   user = User.where( :username => username).first
  #   # If there's no record, redirect back to sign in page
  #   if user == nil
  #     redirect_to("/user_sign_in", { :alert => "Username does not exist."})
  #   else
  #     # If there is a record, check password if password matches
  #     if user.authenticate(password)
  #       session.store( :user_id , user.id)
  #       redirect_to("/", { :notice => "Welcome back #{user.username}"})
  #     else
  #       redirect_to("/user_sign_in", {:notice => "Wrong password."})
  #     end
  #   end
  #   # If there is a record, check password if password matches

  #   # If not, redirect back to sign in page

  #   # If so, set the cookie and redirect to to index page
  # end

  # # CRUD section for user actions
  # def show
  #   the_username = params.fetch("the_username")
  #   @user = User.where({ :username => the_username }).at(0)

  #   render({ :template => "users/show.html.erb" })
  # end

  # def create
  #   user = User.new

  #   user.username = params.fetch("input_username")
  #   user.password = params.fetch("input_password")
  #   user.password_confirmation = params.fetch("input_password_confirmation")

  #   save_status = user.save
  #   if save_status == true
  #     session.store(:user_id, user.id)
  #     redirect_to("/users/#{user.username}",  {:notice => "Welcome " + user.username})
  #   else
  #     redirect_to("/user_sign_up", {:alert => user.errors.full_messages.to_sentence})
  #   end
  # end

  # def update
  #   the_id = params.fetch("the_user_id")
  #   user = User.where({ :id => the_id }).at(0)


  #   user.username = params.fetch("input_username")

  #   user.save
    
  #   redirect_to("/users/#{user.username}")
  # end

  # def destroy
  #   username = params.fetch("the_username")
  #   user = User.where({ :username => username }).at(0)

  #   user.destroy

  #   redirect_to("/users")
  # end

end