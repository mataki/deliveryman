module Deliveryman
  class Configuration
    attr_accessor :report_mail_to
    attr_accessor :report_mail_from
    attr_accessor :processor

    def initialize
      self.processor = -> { [[1,2,3], [4,5,6]] }
    end
  end
end
