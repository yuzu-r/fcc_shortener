class Url < ActiveRecord::Base
  validate :is_url_valid?, :on => :create

  private
    def is_url_valid?
      # check if starts with http or https
      # 
      errors.add(:url, 'is invalid')
    end

end
