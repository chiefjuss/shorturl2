
class UrlsController < ApplicationController
  def index
    # binding.pry
    @urls = Url.all
    render json: @urls
  end

  def encode
    x = Url.new(original: params['url'])
    x.save!
    render json: {url: {original: x.original, short: x.short}}
  end

  def decode
    x = Url.where(original: params['url'])
    render json: x.first.short
  end

  def show
    @presenter = UrlsPresenter.new(params['id'])
    render 'urls/show'
  end
end
