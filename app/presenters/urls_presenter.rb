class UrlsPresenter
  # attr_accessor: :url
  def initialize(url)
    @url = url
  end

  def redirect_to_url
    url = Url.where(short: @url).order(created_at: :desc).first.original
    url = "https://" + url unless url.include?('http')
    url
  end
end