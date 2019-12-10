class RequestToken < ApplicationRecord
  self.table_name = "request_tokens"

  def self.fetch
    self.last.token
  end
end