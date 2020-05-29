class ItemsController < ApplicationController

  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @items = @department.items
  end

  def show
  end

  def new
    @item = @department.items.new
    render partial: "form"
  end

 def create
  @item = @department.items.new(item_params)
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
    render partial: "form"
  end

  def update
    if @item.update(item_params)
      redirect_to [@department, @item]
      
    else
      render :edit
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :price, :description, :department)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_department
    @department = Department.find(params[:department_id])
  end
end


