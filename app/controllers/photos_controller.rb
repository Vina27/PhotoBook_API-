class PhotosController < ApplicationController
    def index 
        @photos = Photo.all 
        render json: @photos
    end 

    def create 
        @photo = Photo.create(photo_params)
        if @photo.valid? 
            render json: @photo, status: 201 
        else 
            render json: @photo.errors.full_messages
        end
    end  

        def show 
            @photo = Photo.find(params[:id])
            render json: @photo
        end 

        def update 
            @photo = Photo.find(params[:id])
            @photo.update(photo_params)
            render json: @photo
        end 

            def destroy 
            @photo = Photo.find(params[:id])
            @photo.destroy
            render json: {message: "Photo has been deleted successfully!", photo: @photo}
        end 


    private 

        def photo_params
            params.permit(:description, :book_id, :img_url)
        end 
    end

