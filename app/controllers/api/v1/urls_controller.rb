class Api::V1::UrlsController < ApplicationController
=begin
  def add_url 
    @url = Url.create(url_params)
    if @url.valid?
      logger.info 'the url is good and created'
    else
      logger.info 'the url is bad and json should return error'
      render :error
    end
  end
=end
  def add_url
    @url = Url.new
    @mine = params[:url]
  end

  def create_url
    @url = Url.create(url_params)
    if @url.valid?
      logger.info 'the url is a-ok'
    else
      logger.info 'the url is bad'
      render :error
    end
  end

  private
    def url_params
      params.require(:url).permit(:long_url)
    end
end