class QuestionsController < ApplicationController
  def index
    @query = Question.all
  end

  def show
    # @query = Question.all
  end

  def new
    @query = Question.new
  end

  def create
    @query = Question.new(query_params)

    if @query.save
      redirect_to questions_path
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
    @query = Question.find(params[:id]).destroy
    redirect_to questions_path
  end
  #def transfer
  #@query = current_user
  #end
  private
  def query_params
    params.require(:question).permit(:question, :answer, :review_forms_id)
  end
end
