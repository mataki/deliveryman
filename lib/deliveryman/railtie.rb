module Deliveryman
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load "deliveryman/tasks/deliveryman.rb"
    end
  end
end
