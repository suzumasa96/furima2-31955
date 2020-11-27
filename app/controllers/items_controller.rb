class ItemsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :move_to_index, except: [:index, :show]

  def index
  end

  # def create
  # @item = Item.new(item_prams)
  # if @item.save
  # redirect_to root_path
  # else
  # render new
  # end
  # end

  # private
  # def item_prams
  # params.requiere(:item).permit(:email,:password)
  # .merge(user_id: current_user.id)
  # end

  # def move_to_index
  # unless user_signed_in?
  # redirect_to action: :index
  # end
  # end
end
