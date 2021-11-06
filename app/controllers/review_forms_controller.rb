class ReviewFormsController < ApplicationController
  def index
    @rf = ReviewForm.all
    #authorize @rfs
    @query = Question.all
    @user = current_user
  end

  def show
    @rf = ReviewForm.all
    @query = Question.all
  end

  def new
    @rf = ReviewForm.new

    @query = Question.all
  end

  def create
    @rf = ReviewForm.new(rf_params)

    if @rf.save
      redirect_to review_forms_path
    else
      render :new
    end
  end

  private
  def rf_params

    params.require(:review_form).permit(:remarks, :submittedBy, :answer, :user_id)

  end

end
