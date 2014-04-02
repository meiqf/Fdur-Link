class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :check_signed_in ,except: [:new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      default_name = user_params[:email].match(/(\A[\w+\-.]+)@[a-z\d\-.]+\.[a-z]+\z/)[1]
      @user.create_user_detail name: default_name
      flash.now[:success] = "welcome to the Fdur"
      sign_in @user
      redirect_to @user, notice: 'Welcome To The Fdur' 
    else
      flash.now[:error] = 'Invalid email/password combination'
      render action: :new
    end
  end

  def update
    if @user.update(user_params)
      flash.now[:success] = 'User was successfully updated.'
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation)
    end
end
