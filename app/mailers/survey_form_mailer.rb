class SurveyFormMailer < ApplicationMailer
  #default from: 'engintechtalha@gmail.com'

  def send_to_user(user)
    @user = user
    mail(:to => @user.email, :subject => "Form filled", :from => "engintechtalha@gmail.com")
    #@url = 'http://localhost:3000/review_forms/new'
    #mail(to: @user.email, subject: 'Filled by Employee')
  end
  def send_to_hr


    mail(:to => "ahsan1234@gmail.com", :subject => "Form filled by manager", :from => "engintechtalha@gmail.com")
  end
  def email_delivery(employee)
    @emp = employee
    mail(:to => @emp.email, :subject => "Form filled by manager", :from => "engintechtalha@gmail.com")
  end
end
