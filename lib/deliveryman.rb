module Deliveryman
  require "deliveryman/version"
  require "deliveryman/configuration"
  require "deliveryman/mailer"
  require "deliveryman/railtie" if defined? ::Rails

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end
end
