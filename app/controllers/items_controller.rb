class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end

    def create
    item = Item.create(item_params)
        if item.valid?
            render json: item
        else
            render json: item.errors, status: 422
        end
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        if item.valid?
            render json: item
        else
            render json: item.errors, status: 422
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        if item.valid?
            render json: item
        else
            render json: item.errors, status: 422
        end
    end

    private
    def item_params
        params.require(:item).permit(:title, :price, :contact, :location, :condition, :description, :image, :user_id)
    end

end
