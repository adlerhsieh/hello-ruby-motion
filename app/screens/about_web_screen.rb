class AboutWebScreen < PM::WebScreen
  title 'About'
  def content
    # NSURL.URLWithString("http://apple.com")
    "http://apple.com".nsurl
  end
end