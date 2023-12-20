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
