class PostsController < ApplicationController

 before_action :set_post, only: [ :show, :edit, :update]

  def index
    @posts = Post.all
  end

  def show
  end

 def new
   @post = Post.new

  end

 def create
   @post = Post.new(post_params)
   if @post.save
     redirect_to @post
   else
     render :new
   end
  end

 def edit
 end

 def update
    if @post.update(post_params)
     redirect_to @post, success: 'Статья успешно обновлена'
   else
     render :edit, danger: 'Статья не обнавлена'
   end
 end


 private

  def set_post
    @post = Post.find(params[:id])
  end

 def post_params
     params.require(:post).permit(:title, :summary, :body, :cover_picture)

   end
 end
