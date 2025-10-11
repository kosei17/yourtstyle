# app/controllers/proposals_controller.rb
class ProposalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_styling

  def select_category; end

  # ← ここを登録画面へ飛ばす
  def select_item
    category = params[:category]
    redirect_to new_item_path(category: category, styling_id: @styling.id)
  end

  def create
    item = current_user.items.find(params[:item_id])
    StylingItem.create!(styling: @styling, item: item)
    redirect_to @styling, notice: "提案しました"
  end

  private
  def set_styling
    @styling = Styling.find(params[:id])
  end
end
