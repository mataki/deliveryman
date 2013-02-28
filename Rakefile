require "bundler/gem_tasks"

$:.unshift File.expand_path("../lib", __FILE__)

require "deliveryman"
Deliveryman.configure do |config|
  config.report_mail_from = "deliveryman_from@example.com"
  config.report_mail_to = "deliveryman_to@example.com"
end
ActionMailer::Base.delivery_method = :test
require "deliveryman/tasks/deliveryman"
