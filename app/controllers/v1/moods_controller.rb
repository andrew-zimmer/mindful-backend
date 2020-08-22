class V1::MoodsController < ApplicationController
    before_action :authenticate_user!
    def create
         @mood = Mood.new(mood_params)
         if @mood.save
            render :create
         else
            head(:unauthorized)
         end
    end


    private
    def mood_params
        params.require(:mood).permit(:user_id, :comment, :mood)
    end
end
