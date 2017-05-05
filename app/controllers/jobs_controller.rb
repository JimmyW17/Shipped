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

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    if @job.save
      respond_to do |format|
        format.js
        format.html
      end
      flash[:notice] = "Job updated successfully"
      redirect_to job_path(@job)
    else
      flash[:alert] = "There was an issue updating job"
      render :edit
    end
  end

  private

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containers_needed)
  end
end
