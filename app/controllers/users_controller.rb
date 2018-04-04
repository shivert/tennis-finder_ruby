class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  # POST /signup
  # return authenticated token upon signup
  def create
    user = User.create!(user_params)
    user.create_user_profile(user_profile_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
        :email,
        :password,
        :password_confirmation
    )
  end

  def user_profile_params
    params.permit(
        :first_name,
        :last_name,
        :user_name,
        :phone_number,
        :country,
        :skill,
        :gender,
        :zip,
        :birth_year
    )
  end
end


