class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    # @user = User.find(params[:id])
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
       render json: {status: 'SUCCESS', message:'New User created', user:@user},status: :ok
    else
      @user.errors.full_messages
     end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {status: 'SUCCESS', message:'User Deleted', user:@user},status: :ok
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: {status: 'SUCCESS', message: 'User updated', user:@user},status: :ok
    else
      @user.errors.full_messages
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :address)
    end
end
