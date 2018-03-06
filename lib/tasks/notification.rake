namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
        employees = Employee.all
        notification_msg = "Please log in to the Overtime managment dashboard to request overtime or confirm hours for last week: https://overtime-app-lf.herokuapp.com/"
        
        employees.each do |employee|
          AuditLog.create!(user_id: employee.id)
          SmsTool.send_sms(number: employee.phone, message: notification_msg)
        end
    end
  end

  
  desc "Sends email notification to managers (admins) each day to inform of pending overtime reqs"
  task manager_email: :environment do
    
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
