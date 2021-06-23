class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user_id = params[:id]
    user = User.find(user_id)
    render json: user
  end

  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
    )
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: 418  # teapot
    end
  end

  def update
    user = User.find(params[:id])
    user.first_name = params["first_name"] || user.first_name
    user.last_name = params["last_name"] || user.last_name
    user.email = params["email"] || user.email
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { message: "Product destroyed!" }
  end
end
