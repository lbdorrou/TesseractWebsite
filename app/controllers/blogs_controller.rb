class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.where("isType = 'News'")
    @blogs = @blogs.order("created_at DESC")
    @userInfo = Array.new
    @blogs.each do |blog|
      @userInfo.push(User.find_by(email: blog.publisher))
    end
  end

  def indexBlog
    @blogs = Blog.where("isType = 'Blog'")
    @blogs = @blogs.order("created_at DESC")
    @userInfo = Array.new
    @blogs.each do |blog|
      @userInfo.push(User.find_by(email: blog.publisher))
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @userInfo = User.find_by(email: @blog.publisher)
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
    authorize! :create, @blog
  end

  # GET /blogs/1/edit
  def edit
    authorize! :update, @blog
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)
    @blog.publisher = current_user.email
    @blog.date = Time.now

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    authorize! :destroy, @blog
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :content, :date, :publisher, :isType, :tagLine, :mainImg, :tags, :show)
    end
end
