class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.text :quote
    end
  end
end
