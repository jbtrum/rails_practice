class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:toggle]
  before_action :load_object, only: [:show, :toggle]

  def index
    @items = Item.all
    @items = Item.where(category_id: params[:category_id]) if params[:category_id].present?
    @items = @items.page(params[:page]).per(4)
  end

  def show

  end

  def toggle
    if user_item = current_user.user_items.where(item: @item).first
      user_item.destroy
      flash[:alert] = "찜을 제거하였습니다."
    else
      current_user.user_items.where(item: @item).create
      flash[:notice] = "찜을 등록하였습니다."
    end
    redirect_back fallback_location: root_path
  end

  private
  def load_object
    @item = Item.find(params[:id])
  end

end
