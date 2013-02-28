require "deliveryman"

namespace :deliveryman do
  desc "Deliver Monthly Report"
  task_arg = defined?(::Rails) ? { monthly: :environment } : :monthly
  task task_arg do
    Deliveryman::Mailer.monthly.deliver
  end
end
