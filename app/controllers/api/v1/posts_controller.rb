class Api::V1::PostsController < Api::ApplicationController
  before_action :set_post, only: [:show]
  skip_before_action :authenticate_request, only: [:index]

  def index
      posts = Post.all
      posts = posts.map do |post|
        { id: post.id, ime: post.user.name, opis: post.opis, user_id: post.user_id, created_at: post.created_at }
      end
      
      render json: { results: posts }.to_json, status: :ok
    end

    def show
      render json: { result: @post }.to_json, status: :ok
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

  end