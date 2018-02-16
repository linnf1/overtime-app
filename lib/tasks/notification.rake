namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  # 1. Shed. to run at Sunday at 5pm
  # 2. Iterate over all employees
  # 3. Skip all admins
  # 4. Send message has instructions + link to log time
  # User.all.each do |user|
  #   SmsTool.send_sms()
  # end
  # No spaces or dashes
  # exactly 10 characters
  # all characters must be number
  
  end

end
