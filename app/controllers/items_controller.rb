class ItemsController < ApplicationController
	def index
		@items = Item.includes(:category).order('categories.name, items.name')
		@item = Item.new
	end

	def edit
		@item = Item.find(params[:id])
	end

	def create
		@item = Item.new(item_params)

		if @item.save
			redirect_to items_path
		else
			@items = Item.all
			render 'index'
		end
	end

	def update
		@item = Item.find(params[:id])

		if @item.update(item_params)
			redirect_to @item
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy

		redirect_to items_path
	end

	private
	def item_params
		params.require(:item).permit(:name, :category_id)
	end
end

