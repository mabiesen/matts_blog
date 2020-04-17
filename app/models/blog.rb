class Blog < ApplicationRecord
  
  def title_url
    "#{self.created_at.to_date}_#{self.title.split(' ').join('_')}"
  end

end
