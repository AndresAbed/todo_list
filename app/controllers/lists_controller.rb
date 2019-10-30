class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    list = List.new(list_params)
    if list.save
      flash[:notice] = "#{list.name} created"
      redirect_to root_path
    else
      flash[:error] = list.errors.full_messages.to_sentence
      redirect_back(fallback_location: root_url)
    end
  end

  def show
    @list = List.find(params[:id])
  end


  private

  def list_params
    params.require(:list).permit(:name, items_attributes: [:id, :description, :status])
  end
end
