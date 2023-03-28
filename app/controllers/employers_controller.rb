class EmployersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    wrap_parameters format:[]

    def index
        employers = Employer.all
        render json: employers, status: :ok
    end
    def create
        employer = Employer.create!(employer_params)
        session[:employer_id] = employer.id
          render json: employer, status: :created
    end
    def show
        employer = Employer.find_by(id:session[:employer_id])
        if employer
            render json: employer, status: :ok
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end
        
    end
    private
    def employer_params
        params.permit(:username, :email, :password)
    end
    def render_unprocessable_entity(e)
        render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end

end
    
