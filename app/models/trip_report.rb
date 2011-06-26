class TripReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :bus
  before_create 'self.created_at = Time.now'
  after_create 'self.bus.update_attribute(:report_token, nil)'
  
  def self.setup(bus)
    bus.report_token = Digest::SHA1.hexdigest("#{Time.now}")[0..9]
    bus.save!
  end
  
  def self.url(bus)
    return Setting::SERVER_URL + "/manager/trip_report/" + bus.report_token
  end
end
