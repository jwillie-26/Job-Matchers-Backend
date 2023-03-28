class SessionsController < ApplicationController
    # def create
    #     employer = Employer.find_by(name: params[:name])
    #     if employer&.authenticate(params[:password])
    #       session[:employer_id] = employer.id
    #       render json: employer, status: :created
    #     # rescue ActiveRecord::RecordInvalid => e
    #     #     render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    #     else
    #         render json: { error: {login: "Invalid username or password" }}, status: :unauthorized
    #     end
    # end
    # def destroy
    #     session.delete :employer_id
    #     head :no_content
    # end
    def create
        employee = Employee.find_by(username: params[:username])
        if employee&.authenticate(params[:password])
          session[:employee_id] = employee.id
          render json: employee, status: :created
        # rescue ActiveRecord::RecordInvalid => e
        #     render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
        else
            render json: { error: {login: "Invalid username or password" }}, status: :unauthorized
        end
    end
    def destroy
        session.delete :employee_id
        head :no_content
    end
  
end


