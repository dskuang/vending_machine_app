class CreateRequestTokensTable < ActiveRecord::Migration[6.0]
  def change
    create_table :request_tokens do |t|
      t.string :token
      t.timestamps null: false
    end
  end
end
