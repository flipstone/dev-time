if Rails.env.development?
  Rails.application.routes.draw do
    get   '/time-machine' => 'dev_time/time_machine#show',
          as: :time_machine

    post  '/time-machine/travel' => 'dev_time/time_machine#travel',
          as: :time_machine_travel

    post  '/time-machine/return' => 'dev_time/time_machine#return',
          as: :time_machine_return
  end
end
