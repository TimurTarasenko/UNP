class CreateUsePhoneSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :use_phone_systems do |t|
      t.datetime :day_id
      t.string :country
      t.bigint :phone_number
      t.string :interfaces
      t.datetime :start_call
      t.integer :duration_call
      t.integer :costs
      t.string :status
      t.string :customer_type
    end
  end
end
