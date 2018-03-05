namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    end
  end

  
  desc "Sends email notification to managers (admins) each day to inform of pending overtime reqs"
  task manager_email: :environment do
    # 1. Iterate over list of pending overtime reqs..
    # 2. Check to see if there are any
    # 3. Iterate over list of admins
    # 4. Send email to each admin
    
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
