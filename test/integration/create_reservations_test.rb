require "#{File.dirname(__FILE__)}/../test_helper"

class CreateReservationsTest < ActionController::IntegrationTest
  fixtures :administrators, :users
  
  # def test_create_reservations
  #   # intro test, really tests next to nothing other than the servers up and controllers load...
  #   get "/index"
  #   assert_response :success
  #   
  #   # logging in as admin; creating sessions, buses and routes
  #   open_session do
  #     admin_login
  #     create_fall_session
  #     @fs = TransportSession.find_by_name("Fall Break 2006")
  #     create_fall_boston_nyp_route()
  #     create_fall_boston_nyp_buses(Route.find)
  #   end
  # 
  #   # logging in as each of 27 users, each user grabs a seat on a bus
  #   for i in 'a'..'b'
  #     open_session do        
  #       post "/user/login", "set_remember_me"=>"0", "password"=>"default", "login_id"=>"07#{i+i+i}"
  #       get "/user/change_password"
  #       assert_response :success
  #     end
  #   end
  # end
  # 
  # private
  # 
  # def admin_login
  #   post "/administrators/login", "username"=>"admin", "password"=>"default"
  #   assert_response :redirect
  # end
  # 
  # def create_fall_session
  #   post "/transport_sessions/create", "transport_session"=>{"name"=>"Fall Break 2006", "reservations_opening_date(1i)"=>"2006", "reservations_opening_date(2i)"=>"9", "reservations_opening_date(3i)"=>"27", "cash_reservations_closing_date(1i)"=>"2006", "cash_reservations_closing_date(2i)"=>"9", "reservations_opening_date(4i)"=>"12", "cash_reservations_closing_date(3i)"=>"27", "reservations_opening_date(5i)"=>"25", "cash_reservations_closing_date(4i)"=>"12", "information"=>"", "cash_reservations_closing_date(5i)"=>"25"}
  #   assert_response :redirect    
  # end
  # 
  # def create_fall_boston_nyp_route
  #   post "/routes/create", "route"=>{"price"=>"5.00", "transport_session_id"=>"3", "information"=>"", "point_a"=>"Williamstown", "point_b"=>"New York Penn Station"}
  #   assert_response :redirect
  # end
  # 
  # def create_fall_boston_nyp_buses
  #   post "/buses/create", "bus"=>{"departure(1i)"=>"2006", "departure(2i)"=>"9", "going_away"=>"true", "departure(3i)"=>"27", "seats"=>"80", "departure(4i)"=>"12", "departure(5i)"=>"44", "route_id"=>"1"}
  #   assert_response :redirect
  # end
end