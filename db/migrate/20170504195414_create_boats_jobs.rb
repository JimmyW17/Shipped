class CreateBoatsJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :boats_jobs, :id => false do |t|
      t.references :boats
      t.references :jobs
    end
  end
end
