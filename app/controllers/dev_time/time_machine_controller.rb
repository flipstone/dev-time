if Rails.env.development?
  module DevTime
    class TimeMachineController < ApplicationController
      def show
        render layout: false
      end

      def travel
        if params[:destination].blank?
          flash[:time_machine_error] = "You must specify a destination time!"
        else
          begin
            Delorean.time_travel_to params[:destination]
            flash[:time_machine_message] = "Time travel successful."
          rescue => e
            flash[:time_machine_error] = "The Delorean wasn't able to understand your destination"
          end
        end
        redirect_to :time_machine
      end

      def return
        Delorean.back_to_the_present
        flash[:time_machine_message] = "You are safely back in the present."
        redirect_to :time_machine
      end
    end
  end
end
