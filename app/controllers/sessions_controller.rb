class SessionsController < ApplicationController
  def new

  end

  def create
    # Get params[:user] from form in new.html.erb
    # And use it to look up that user in the db
    user = User.find_by(name: params[:user])
    # Make sure that the user is actually in the database
    if user
      # Get params[:password] from form in new.html.erb
      # And use it to compare the password of this user in the database
      if user.password == params[:password]
        # The username and password combo is good, so create a session for this user
        session[:user] = params[:user] # I still don't really understand the session[] magic
        redirect_to restaurants_path, notice: "Welcome to the site, #{params[:user]}!"
      end
    end
  end

  def destroy
    session[:user] = nil
    redirect_to restaurants_path
  end
end
