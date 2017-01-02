class Url < ActiveRecord::Base
  validate :is_url_valid?, :on => :create
  validates :long_url, presence: { message: 'url is missing'}
  #validates :long_url, uniqueness: { message: 'url is not unique'}

  private
    def is_url_valid?
      # check if starts with http or https
      long_url = self.long_url
      if /(http|https):\/\//.match(long_url) 
        # valid so far
        begin
          URI::parse(long_url)
        rescue URI::InvalidURIError
          errors.add(:url,'URI parse says the url is invalid.')
        end
      else
        errors.add(:url, 'Must start with http:// or https:// to shorten!')
      end
    end

end
