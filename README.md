# README

* Ruby version: 3.2.0
* Rails version: 7.1.2
* Database: Postgresql
* Services: Twilio

# Twilio Setup:

This app is configured to send TXT via SMS service and uses the Twilio api. The following environment variables are required to be set or exported:

* `account_sid` is loaded from the environment variable `TWILIO_SID`
* `auth_token` is loaded from the environment variable `TWILIO_AUTH`
* The `from:` field in the message is loaded from the environment variable `TWILIO_PHONE`

# Overview:

This application requires every user to sign up with a phone number, in addition to an email and password. 

I used the Twilio "To phone number" from their Step 2: Try it Out to verify that I received a message, however you can use any phone number if you have a real/upgraded/non-trial Twilio Account.

The button on the homepage goes to the home#txt controller and acts as the trigger. 

This text controller loads a text module which will text the currently logged - in user a message, defined in `app/services/text.rb`

While the current module accepts a recipient phone number, it can also be extended with a second argument to make the body of the message programmatically determined as well. 