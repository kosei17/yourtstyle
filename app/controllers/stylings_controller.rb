class StylingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @stylings = Styling.with_attached_photo.order(created_at: :desc)
  end

  def new
    @styling  = current_user.stylings.new
    @my_items = current_user.items
  end

  def create
    @styling = current_user.stylings.new(styling_params)
    if @styling.save
      redirect_to mypage_path, notice: "投稿しました"
    else
      @my_items = current_user.items
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @styling = Styling.find(params[:id])
    @proposed_items = @styling.items
                             .where.not(user_id: @styling.user_id)
                             .includes(image_attachment: :blob)
  end

  private

  def styling_params
    params.require(:styling).permit(:caption, :photo, :min_price, :max_price, item_ids: [])
  end
end
