class CreateRaichands < ActiveRecord::Migration
  def self.up
    create_table :raichands do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :raichands
  end
end
