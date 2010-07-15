class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :connections do |t|
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
