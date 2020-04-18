class BlogsDisplayController < ApplicationController
  before_action :set_blog, only: [:blog_page]

  def blog_page
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.where(title_url: params[:blog_title]).first
    end
end
