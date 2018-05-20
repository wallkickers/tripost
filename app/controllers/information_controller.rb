class InformationController < ApplicationController

  def show
  end

  def new
    @information = Tripost.find_by(id: params[:id]).information.build
    @information_all = Tripost.find_by(id: params[:id]).information
  end

  def create
    @information = Tripost.find_by(id: params[:id]).information.build(information_params)
    
    if @information.save
      flash[:success] = "ルートを登録しました"
      redirect_to new_tripost_path
    else
      flash[:danger] = "ルートの登録ができませんでした"
      redirect_to new_tripost_path
    end
  end

  def update
    @information = Information.find(params[:id])
    
    if @information.update(information_params)
      flash[:success]="ルートは正常に更新されました"
      redirect_to new_tripost_path
    else
      flash.now[:danger] = "ルートを更新できませんでした"
      render :edit
    end
  end

  def destroy
    @information = Information.find_by(id: params[:id])
    @information.destroy
    flash[:success] = "ルートを削除しました"
    redirect_back(fallback_location: root_path)
  end

  def edit
    @information = Information.find(params[:id])
    #@information_all = Tripost.find_by(id: params[:id]).information
  end
  
  private
  
  def information_params
    params.require(:information).permit(:time, :place, :place_comment, :place_time, :move_by, :move_start, :move_goal, :move_time, :id)
  end
  
end
