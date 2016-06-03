class CommentsController < ApplicationController
 def new
    @comments = Comment.all
    @comment = Comment.new

  #  @comment.save
   # redirect_to @comment
 end

  
  def commentParams
   params.require(:comment).permit(:title, :text)
  end

 def index
  @comments = Comment.all
 end

 def create
  @comment = Comment.new(params.require(:comment).permit(:title, :text))

  @comment.save
  redirect_to :back
 end
end
