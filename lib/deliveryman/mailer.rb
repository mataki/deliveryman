require "action_mailer"

module Deliveryman
  class Mailer < ActionMailer::Base
    prepend_view_path File.expand_path('../../../ui/', __FILE__)

    def monthly
      @data = Deliveryman.configuration.processor.call
      app_name = defined?(Rails) ? "[#{Rails.application.class.parent_name}]" : ""
      mail to: Deliveryman.configuration.report_mail_to, from: Deliveryman.configuration.report_mail_from, subject: "#{app_name}Monthly report mail" do |format|
        format.text
      end
    end
  end
end
