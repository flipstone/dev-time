module DevTime
  class Engine < Rails::Engine
    config.to_prepare do
      ApplicationController.helper(DevTime::CurrentTimeHelper)

      if Rails.env.development?
        require 'delorean'
      end
    end
  end
end
