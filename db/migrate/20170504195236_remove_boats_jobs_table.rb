class RemoveBoatsJobsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :boats_jobs
  end
end
