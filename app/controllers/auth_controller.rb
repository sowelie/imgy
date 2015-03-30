class AuthController < ApplicationController
  def login(username, password)
    user = User.find_by(name: username).try(:authenticate, password)
    if user
      # store the user in session
      session[:user] = user

      # redirect back home
      redirect_to root_url
    else
      redirect_to root_url flash: { error: 'The specified username and password do not match our records.' }
    end
  end

  def register

  end

  def register_post(first_name, last_name, email, username, password, password_confirm)
    User.create(first_name: first_name, last_name: last_name,
                email: email, password: password, password_confirm: password_confirm)
  end
end
