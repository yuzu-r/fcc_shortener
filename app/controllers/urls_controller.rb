class UrlsController < ApplicationController
  def goto
    short_url = params[:url]
    id = ShortURL.decode(short_url)
    find_url = Url.find_by(id: id.to_i)
    @long_url = find_url ? find_url.long_url : nil
    if @long_url
      redirect_to @long_url
    end
  end
  def about
    @request = request.base_url
  end
end