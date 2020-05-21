class ItemsController < ApplicationController

  
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @item = @department.items
  end

  def show
  end

  def new
    @item = @departments.item.new
  end

 def create
  @item = @department.item.new(item_params)
    if @item.save
      redirect_to [@department, @item]
    else render :new 
  end
end

  def destroy
    @item.destroy
    redirect_to edit_department_item_path(@department)
  end

  def edit
    # @department need to assign this to something 
  end

  def update
    if @item.update(item_params)
      redirect_to [@department, @item]
      # same as redirect_to sub_topic_path(@sub, @topic)
    else
      render :edit
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :department)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  


end


