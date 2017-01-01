class Api::V1::UrlsController < ApplicationController
  def add_url
    @url = Url.new
    @mine = params[:url]
  end

  def create_url
    @url = Url.create(url_params)
    if @url.valid?
      render :response
    else
      render :error
    end
  end

  private
    def url_params
      params.require(:url).permit(:long_url)
    end
end