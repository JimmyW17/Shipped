class RenameColumnBoatsJobs < ActiveRecord::Migration[5.0]
  def change
    rename_column :boats_jobs, :boats_id, :boat_id
    rename_column :boats_jobs, :jobs_id, :job_id
  end
end
