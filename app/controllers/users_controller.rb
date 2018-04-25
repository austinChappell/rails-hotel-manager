class UsersController < ApplicationController

  before_action :set_user, except: [:index, :new, :create]
  before_action :require_admin, only: [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Account created!"
      redirect_to root_path
    else
      flash[:failure] = "Account was not created"
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :gender, :dob, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end