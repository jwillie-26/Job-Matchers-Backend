class JobListingsController < ApplicationController
    def index
        job_listings = JobListing.all
        render json: job_listings, status: :ok
    end
    def create
        job_listing = JobListing.create(job_listing_params)
        render json: job_listing, status: :created
    end
    def show
        job_listing = JobListing.find_by(id:params[:id])
          if job_listing
                render json: job_listing, status: :ok
            else
                render json: {error: "Job_listing not found"}, status: :not_found
             end
    end
    def update
        job_listing = JobListing.find_by(id:params[:id])
          if job_listing
                job_listing.update(job_listing_params)
                render json: job_listing, status: :accepted
            else
                render json: {error: "Job_listing not found"}, status: :not_found
             end
     end

    def destroy
        job_listing = JobListing.find_by(id:params[:id])
          if job_listing
                    job_listing.destroy
                    head :no_content
            else
                render json: {error: "Job_listing not found"}, status: :not_found
            end
                             
                
      end
            

    private 
    def job_listing_params
        params.permit(:job_title, :category_id, :description, :qualification, :deadline, :employer_id, :employee_id)
    end

end
