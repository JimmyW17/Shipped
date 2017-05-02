class RenameContainerToContainerCapacity < ActiveRecord::Migration[5.0]
  def change
    rename_column :boats, :container, :container_capacity
  end
end
