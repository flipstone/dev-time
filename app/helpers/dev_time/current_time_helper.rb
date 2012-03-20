module DevTime
  module CurrentTimeHelper
    def dev_time_stylesheet_link_tag
      if Rails.env.development?
        stylesheet_link_tag 'dev_time/current_time'
      else
        ''
      end
    end

    def dev_time_current_time_display
      if Rails.env.development? &&
         Delorean.send(:time_travel_offsets).any?
        content_tag :div, class: "dev-time-current-time" do
          "Time Travelling<br/>#{Time.now.strftime "%H:%M:%S %Y-%m-%d"}".html_safe
        end
      else
        ''
      end
    end
  end
end
