class Blog < ApplicationRecord
  before_save :set_title_url

  def set_title_url
    date = if self.created_at
	     self.created_at.to_date
	   else
	     Date.today
	   end
    underscored_title = "#{date}_#{self.title.gsub(' ','_')}".downcase
    self.title_url = sanitize_string_for_title_url(underscored_title) 
  end

  def sanitize_string_for_title_url(url_string)
    url_string.gsub!("'",'')
    url_string.gsub!("?",'')
    url_string.gsub!("!",'')
    url_string.gsub!(':','_')
    url_string.gsub!(';','_')
    url_string
  end

end
