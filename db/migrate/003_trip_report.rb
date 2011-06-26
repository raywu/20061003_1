class TripReport < ActiveRecord::Migration
  def self.up
    create_table :trip_reports do |t|
      t.column "user_id", :integer, :null => false
      t.column "bus_id", :integer, :null => false
      t.column "refund_issued", :integer, :default => 0
      t.column "on_time", :integer, :default => 1
      t.column "comment", :text
      t.column "created_at", :datetime, :null => false
    end

    create_table :walk_ons do |t|
      t.column "bus_id", :integer, :null => false
      t.column "name", :string, :limit => 50
      t.column "login_id", :string, :limit => 30
      t.column "mailbox", :string, :limit => 50
      t.column "phone1", :string, :limit => 20
      t.column "phone2", :string, :limit => 20
      t.column "payment_status", :integer, :default => 0
    end

    create_table :reservation_modifications do |t|
      t.column "reservation_id", :integer, :null => false
      t.column "modification", :string, :limit => 100
      t.column "created_at", :datetime, :null => false
      t.column "value", :string, :limit => 20
    end
    
    add_column "buses", "report_token", :string, :limit => 20
  end

  def self.down
  end
end
