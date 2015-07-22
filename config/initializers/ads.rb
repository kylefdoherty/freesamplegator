Ads.configure do |config|
  config.renderer = lambda { |options|
    tag(
      :img,
      src: "https://placeholdit.imgix.net/~text?txtsize=33&txt=600%C3%97150&w=600&h=150"
    )
  }
end
