class ProfileController < ApplicationController
    def index
        @USER=current_user 
        @posts= Post.where(user: current_user)
    end
end
