# app/controllers/items_controller.rb
class ItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @item = current_user.items.new
    # 提案先スタイリングがあれば保持（URLクエリから来る）
    @styling_id = params[:styling_id]
    @category   = params[:category]
  end

  def create
    @item = current_user.items.new(item_params)

    if @item.save
      # ← スタイリングに提案として紐づける（スタイリングIDが来ていたら）
      if params[:styling_id].present?
        StylingItem.create!(styling_id: params[:styling_id], item_id: @item.id)
      end

      # 一覧に戻る
      redirect_to stylings_path, notice: "アイテムを登録しました。"
    else
      @styling_id = params[:styling_id]
      @category   = params[:category]
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:category, :name, :price, :image)
  end
end
