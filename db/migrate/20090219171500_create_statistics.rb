class CreateStatistics < ActiveRecord::Migration
  def self.up
    create_table :statistics do |t|
      t.string :stat_key
      t.string :stat_value

      t.timestamps
    end
  end

  def self.down
    drop_table :statistics
  end
end
