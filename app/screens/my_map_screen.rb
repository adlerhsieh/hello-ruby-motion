class MyMapScreen < PM::MapScreen
  title 'Map'
  start_position latitude: 35.090648651123, longitude: -82.965972900391, radius: 1

  def on_load
    set_nav_bar_button :left, title: "Home", action: :go_home
  end

  def go_home
    open HomeScreen.new(nav_bar: true)
  end

  def annotation_data
    [{
      longitude: -82.965972900391,
      latitude: 35.090648651123,
      title: "Rainbow Falls",
      subtitle: "Nantahala National Forest",
      action: :show_alert
    }]
  end

  # Things will do right after on_load
  def will_appear
    # App.alert("Here!")
    show_user_location
  end

end
