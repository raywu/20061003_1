# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
require 'user_library'
require 'admin_library'
require 'utility_methods'
require 'active_record_errors_ext'

class ApplicationController < ActionController::Base
  include UserLibrary
  include AdminLibrary

  filter_parameter_logging "password"
  filter_parameter_logging "card_number"
  filter_parameter_logging "expiration_month"
  filter_parameter_logging "expiration_year"
  filter_parameter_logging "name_on_card"

  def parse_schedule_selections(selections)
    reservations = []
    price = Money.new(0)
    cash_reservations_allowed = true
    selections.each do |p|
      if p[0] =~ /^[0-9]+$/
        if p[1].to_i > 0
          bus = Bus.find(p[0])
          reservations << [bus, p[1].to_i]
          if !bus.cash_reservations_allowed?
            cash_reservations_allowed = false
          end
          price = price + (bus.to_m * p[1].to_i)
        end
      end
    end
    return reservations, price, cash_reservations_allowed
  end
  
end
