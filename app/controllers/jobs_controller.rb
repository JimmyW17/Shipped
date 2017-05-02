class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "Job registered successfully"
      redirect_to job_path(@job)
    else
      flash[:alert] = "There was an issue registering job"
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containers_needed)
  end
end
