class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @comments = @question.comments
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if params[:vote] == "A"
      @question.voteA += 1
      @question.save
      redirect_to questions_path
    elsif params[:vote] == "B"
      @question.voteB += 1
      @question.save
      redirect_to questions_path
    else
      if @question.update(question_params)
        redirect_to questions_path
      else
        render 'edit'
      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end


  private
    def question_params
      params.require(:question).permit(:title, :optionA, :optionB, :voteA, :voteB)
    end
end
