class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email:                 params['user']['email'],
      password:              params['user']['password'],
      password_confirmation: params['user']['password_confirmation'],
      full_name:             params['user']['full_name']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end
end
