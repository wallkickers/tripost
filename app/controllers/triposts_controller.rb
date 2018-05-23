class TripostsController < ApplicationController
  before_action :require_user_logged_in, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy]
  
  def show
    @tripost = Tripost.find(params[:id])
    @information = Tripost.find(params[:id]).information.all.order("created_at asc")
  end

  def new
    @tripost = Tripost.new
    @triposts = current_user.triposts.all.order("created_at desc")
  end

  def create
    @tripost = current_user.triposts.build(tripost_params)
    
    if @tripost.save
      flash[:success] = "旅行を登録しました！"
      redirect_to new_tripost_path
    else
      flash[:danger] = "登録に失敗しました。"
      redirect_to new_tripost_path
    end
  end

  def edit
    @tripost = Tripost.find(params[:id])
    @triposts = current_user.triposts.all.order("created_at desc")
  end

  def update
    @tripost = current_user.triposts.find_by(id: params[:id])
    
    if @tripost.update(tripost_params)
      flash[:success] = "旅行を更新しました"
      redirect_to new_tripost_path
    else
      flash.now[:danger] = "旅行を更新できませんでした"
      render "edit"
    end
  end

  def destroy
    @tripost.destroy
    flash[:success] = "旅行を削除しました"
    redirect_back(fallback_location: root_path) 
  end
  
  private
  def tripost_params
    params.require(:tripost).permit(:image, :title,:user_id, :theme_id, :destination_id, :long_id, :money_id, :status_id)
  end
  
  def correct_user
    @tripost = current_user.triposts.find_by(id: params[:id])
    unless @tripost
      redirect_to root_url
    end
  end

end
