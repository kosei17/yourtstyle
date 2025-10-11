# app/controllers/my_pages_controller.rb
class MyPagesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user     = current_user
    @stylings = @user.stylings.with_attached_photo
    @items    = @user.items.with_attached_image
  end
end
