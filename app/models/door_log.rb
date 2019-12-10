class DoorLog < ApplicationRecord
  self.table_name = "door_logs"

  def self.open!
    create!(is_door_open: true)
  end

  def self.close!
    create!(is_door_open: false)
  end
end