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
    @ref = ReviewForm.new
    @user = current_user
    if current_user.role=="Employee"
    @ref = ReviewForm.find_by(params[:user_id])
    elsif current_user.role=="Manager"
    @ref = ReviewForm.find_by(params[:manager_id])

    end
  end

  def create
    @ref = ReviewForm.new(rf_params)

    @user = ReviewForm.find_by(params[:id])
    if @ref.save

      #@manager = User.where(role: "Manager")
      if current_user.role =="Employee"
        current_manager = User.find(current_user.manager_id)

        SurveyFormMailer.send_to_user(current_manager).deliver_now
      elsif current_user.role=="Manager"
        hr = User.where(role:"HR")
        SurveyFormMailer.send_to_hr.deliver_now
      end

        #else
        #SurveyFormMailer.send_to_hr(@user).deliver_now

      redirect_to review_forms_path
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
