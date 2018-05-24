class ToppagesController < ApplicationController
  Time.zone = 'Tokyo'
  
  def index
    @user = current_user
    @triposts = Tripost.all.order("created_at desc").page(params[:page])
  end
end


#@user に現在のログインユーザー情報を入れる必要がある