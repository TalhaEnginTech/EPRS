class ReviewFormsController < ApplicationController
  def index
    @rf = ReviewForm.all

    @query = Question.all
    @user = current_user
  end

  def show
    @ref = ReviewForm.find_by(params[:id])

  end

  def new
    #Questions Static Array for forms
    @form_questions = Question.pluck(:question)


    @ref = ReviewForm.new
    @user = current_user

  end

  def create
    @form_questions = Question.pluck(:question)
    @answers = " "
    @form_questions.each_with_index do |a,i|
      @answers += String(params[:review_form]["answer-#{i}"]) + ","
    end



    @ref = ReviewForm.new(rf_params.merge(answer: @answers))

    @user = ReviewForm.find_by(params[:id])

    if @ref.save

      #@manager = User.where(role: "Manager")
      if current_user.role =="Employee"
        current_manager = User.find(current_user.manager_id)

        SurveyFormMailer.send_to_user(current_manager).deliver_now
      elsif current_user.role=="Manager"
        # hr = User.where(role:"HR")
        SurveyFormMailer.send_to_hr.deliver_now
      end

      #else
      #SurveyFormMailer.send_to_hr(@user).deliver_now

      redirect_to root_path
    else
      render :new
    end
  end
  def edit

  end
  def update

  end
  def destroy
    @ref = ReviewForm.find(params[:id]).destroy
    redirect_to review_forms_path
  end

  private
  def rf_params
    params.require(:review_form).permit(:remarks, :submittedBy, :user_id, :quality, :productivity, :job_knowledge, :commitment, :attendance, :creativity, :policy, :lead, :accomplishments, :areas, :recommendations, :score )

  end

end