class PagesController < ApplicationController
  def Home
    @news = Blog.where(isType: 'News', show: '1').order("created_at DESC").limit(Rails.application.config.x.displayOptions.newsCount)
    @userInfoNews = Array.new
    @news.each do |news|
      @userInfoNews.push(User.find_by(email: news.publisher))
    end



    @blogs = Blog.where(isType: 'Blog', show: '1').order("created_at DESC").limit(Rails.application.config.x.displayOptions.newsCount)
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

  def Administration
  end

  def Press
  end
end
