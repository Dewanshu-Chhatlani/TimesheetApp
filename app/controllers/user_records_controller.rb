class UserRecordsController < ApplicationController
    def index
        @user_records = current_user.user_records.order('date DESC')
    end
    
    def show
        @user_record = UserRecord.find(params[:id])
    end
    
    def new
        @user_record ||=  UserRecord.new
    end

    def edit
        @user_record = UserRecord.find(params[:id])
    end
    
    def create
        # render plain: params[:user_record].inspect
        # @user_record = UserRecord.new(user_record_params)
        @user_record = current_user.user_records.create(user_record_params)
        if @user_record.save
            flash[:notice] = "Success!"
            redirect_to @user_record
        else
            # flash[:alert] = @user_record.errors.full_messages.join('<br>')
            render "new"
        end
    end

    def update
        @user_record = UserRecord.find(params[:id])
        if @user_record.update(user_record_params)
            flash[:notice] = "Success!"
            redirect_to @user_record
        else
            render "edit"
        end
    end

    def dropdown
        @client_nm = params[:client_name]
        @client = Client.where(client_name: @client_nm).first
        if @client
            render :json => @client.projects.collect{|c| [c.id, c.project_name]}
        else
            render json: []
        end
    end

    private
        def user_record_params
            params.require(:user_record).permit(:client_name, :project_name, :activity_type, :date, :start_time, :end_time, :description)
        end
end
