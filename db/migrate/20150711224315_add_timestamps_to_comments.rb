class AddTimestampsToComments < ActiveRecord::Migration
  change_table(:comments) do |t|
    t.timestamps
  end
end
