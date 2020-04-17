json.extract! blog, :id, :title, :summary, :content_html, :created_at, :updated_at
json.url blog_url(blog, format: :json)
