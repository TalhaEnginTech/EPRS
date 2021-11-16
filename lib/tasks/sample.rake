namespace :sample do

  desc 'TODO'
  task test: :environment do
      @employee = User.where(role: 'Employee')
      @employee.each do |i|
        join_date = i.joindate
        time_period = join_date + 6.months
        if Date.today >= time_period
          SurveyFormMailer.email_delivery(i).deliver
        end
      end
  end
end


