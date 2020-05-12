class ProfileController < ApplicationController
    def index
        @USER=current_user 
        @posts= Post.where(user: current_user)
        @posts = @posts.order(created_at: :desc)
        @IsThisMe = true
        @post_count = Post.where(user: current_user).count
        @follower_count = Follow.where(followable: @USER).count
        @following_count = Follow.where(follower: @USER).count
    end
    
    def other
        @USER=User.find(params[:id])
        @posts= Post.where(user: User.find(params[:id]))
        @IsThisMe = false
        @post_count = Post.where(user: @USER).count
        @follower_count = Follow.where(followable: @USER).count
        @following_count = Follow.where(follower: @USER).count
        render :template => "profile/index"
    end
end
