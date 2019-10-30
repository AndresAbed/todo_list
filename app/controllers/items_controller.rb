class ItemsController < ApplicationController
  def create
    list = List.find(params[:list_id])
    item = list.items.build(item_params)
    if item.save
      flash[:notice] = "item created"
      redirect_to list_path(item.list)
    else
      flash[:error] = item.errors.full_messages.to_sentence
      redirect_to list_path(item.list)
    end
  end

  private
  def item_params
    params.require(:item).permit(:description, :status)
  end
end
