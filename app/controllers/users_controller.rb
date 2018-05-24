class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show]
  
  def show
    @user = User.find(params[:id])
    @triposts = @user.triposts.all.order("created_at desc")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "あなたをトラベラーとして登録しました。"
      redirect_to login_path
    else
      flash.now[:danger] = "登録に失敗しました。"
      render :new
    end    
  end
  
  
  def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation)
  end
  
end
