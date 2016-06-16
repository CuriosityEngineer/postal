class PostsController < ApplicationController
  def index
     @posts = Post.order( created_at: :desc )
     authorize! :read, @posts
  end

  # When you create a new post
  def create
     post_params = params.require( :post ).permit( :content )

     @post = Post.new( content: post_params[:content] )
     @post.user = current_user
     authorize! :create, @post

     if @post.save
        redirect_to posts_path
     else
        render posts_path
     end
  end

  # A page for de individual User's posts
  def user
    @user = User.find( params[:user_id] )
    authorize! :read, @user

    @posts = Post.where( user: @user ).order( created_at: :desc )
    authorize! :read, @posts

    @likes = @user.likes.joins( :post ).order( "posts.created_at DESC" )
    authorize! :read, @likes
   end

end
