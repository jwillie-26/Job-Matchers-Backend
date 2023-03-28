class EmployeesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    wrap_parameters format:[]

    def index
        employees = Employee.all
        render json: employees, status: :ok
    end
    def create
        employee = Employee.create!(employee_params)
        session[:employee_id] = employee.id
          render json: employee, status: :created
    end
    def show
        employee = Employee.find_by(id:session[:employee_id])
        if employee
            render json: employee, status: :ok
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end
        
    end
    private
    def employee_params
        params.permit(:username, :email, :password)
    end
    def render_unprocessable_entity(e)
        render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end
    
end
