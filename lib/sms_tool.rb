module SmsTool
  def self.send_sms(number:, message:)
    puts "Sending SMS..."
    p "#{message} to #{number}"
  end
end