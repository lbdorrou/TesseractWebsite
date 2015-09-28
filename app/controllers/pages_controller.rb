class PagesController < ApplicationController
  def Home

	  @news = Blog.where(isType: 'News').where(show: true).order("created_at DESC").limit(2).to_a
	  @userInfoNews = Array.new
    @news.each do |news|
      @userInfoNews.push(User.find_by(email: news.publisher))
    end


	  @blogs = Blog.where(isType: 'Blog').where(show: true).order("created_at DESC").limit(4).to_a
	
    @userInfoBlog = Array.new
    @blogs.each do |blog|
      @userInfoBlog.push(User.find_by(email: blog.publisher))
    end

    @show = Array.new
    Rails.application.config.x.displayOptions.showcase.each do |show|
      temp = Project.find_by(title: show)
      if temp.nil?
        temp2 = Course.find_by(title: show)
        @show.push(temp2)
      else
        @show.push(temp)
      end
    end
  end

  def Contact

  end

  def Builds
  	@links = Array.new
	@naturalName = Array.new
	@links = Dir["public/gamebuilds/*"]
	@links.each do |link|
		@naturalName.push(File.basename(link))
	end
	#@links = ["TESTING YO","YEP"]
  end

  def Press
  end
end
