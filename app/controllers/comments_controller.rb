class CommentsController < ApplicationController

  def new
    @question = Question.find(params[:id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:id])
    @comment = @question.comments.new
    if @comment.save
      redirect_to question_path
    else
      render 'new'
    end
  end



  private
    def comment_params
      params.require(:comment).permit(:comment_content)
    end
end
