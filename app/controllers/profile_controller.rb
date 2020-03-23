class ProfileController < ApplicationController
    def index
        @USER=current_user 
        @posts= Post.where(user: current_user)
    end
    
    def other
        @USER=User.find(params[:id])
        @posts= Post.where(user: User.find(params[:id]))
        render :template => "profile/index"
    end
end
