class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.text :quote
      t.integer :position
    end
  end
end
