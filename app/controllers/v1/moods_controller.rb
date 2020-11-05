class V1::MoodsController < ApplicationController
    before_action :authenticate_user!
    def create
         @mood = Mood.new(mood_params)
         if @mood.save
            render :create
         else
            render json: {errors: @mood.errors.full_messages}
         end
    end

    def index
        @user = User.find_by(email: params[:user_email])
        if @user
            @moods = @user.moods
            render :index
        else
            render json: {errors: 'can not find user'}
        end
    end


    private
    def mood_params
        params.require(:mood).permit(:user_id, :comment, :mood)
    end
end
