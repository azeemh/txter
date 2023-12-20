class Text
  def initialize
    @client = Twilio::REST::Client.new(
      ENV["TWILIO_SID"],
      ENV["TWILIO_AUTH"]
      )
  end

  def send_text (recipient_phone_number)
    @client.messages.create(
      from: ENV["TWILIO_PHONE"],
      to: recipient_phone_number,
      body: "Welcome to Txter!"
      )
  end
end