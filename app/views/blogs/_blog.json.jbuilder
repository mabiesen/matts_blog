json.extract! blog, :id, :title, :title_url, :summary, :content_html, :created_at, :updated_at
json.url blog_url(blog, format: :json)
