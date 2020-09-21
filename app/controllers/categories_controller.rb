class CategoriesController < ApplicationController
    def index 
        @categories = Category.all 
        render json: @categories
    end 

    def create 
        @category = Category.create(category_parmas)
        if @category.vaild? 
            render json: @category, status: 201 
        else 
            render json: @category.errors.full_messages
        end
    end  

        def show 
            @category = Category.find(params[:id])
            render json: @category
        end 


        def destroy 
            @category = Category.find(params[:id])
            @category.destroy
        end 
    

private 

    def category_params
        params.permit(:book_id, :title)
    end 
end


end
