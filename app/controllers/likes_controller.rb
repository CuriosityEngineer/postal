class LikesController < ApplicationController
  def create
      post = Post.find( params[:post_id] )

      if like = Like.find_by( post: post, user: current_user )
      authorize! :destroy, like
      like.destroy
    else
      like = Like.new( post: post, user: current_user )
      authorize! :create, like
      like.save
    end

      redirect_to posts_path
   end


end
