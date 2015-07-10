class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.references :blog, index: true, foreign_key: true
    end
  end
end
