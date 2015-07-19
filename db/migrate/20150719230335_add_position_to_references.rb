class AddPositionToReferences < ActiveRecord::Migration
  def change
    add_column :references, :position, :integer
  end
end
