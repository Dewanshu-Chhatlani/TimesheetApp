class UserRecordsController < ApplicationController
    def index
        @user_records = current_user.user_records
    end
    def show
        @user_record = UserRecord.find(params[:id])
    end
    def new
    end
    def create
        # render plain: params[:user_record].inspect
        # @user_record = UserRecord.new(user_record_params)
        @user_record = current_user.user_records.create(user_record_params)
        @user_record.save
        redirect_to @user_record
    end
    private
        def user_record_params
            params.require(:user_record).permit(:client_name, :project_name, :activity_type, :date, :start_time, :end_time, :description)
        end
end
