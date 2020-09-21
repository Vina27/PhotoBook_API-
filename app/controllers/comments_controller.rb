class CommentsController < ApplicationController
    def index 
        @comments = Comment.all 
        render json: @comments
    end 

    def create 
        @comment = Comment.create(comment_parmas)
        render json: @comment 
    end  

        def show 
            @comment = Comment.find(params[:id])
            render json: @comment
        end 


        def destroy 
            @comment = Comment.find(params[:id])
            @comment.destroy
            render json: {message: "Comment has been deleted successfully!", comment: @comment}
        end 
    

private 

    def comment_params
        params.permit(:content, :user_id, :photo_id)
    end 
end


end
