class NavigationScreen < PM::TableScreen
  def table_data
    [{
      title: "This is a title",
      cells: [{},
              {
        title: 'Hello World',
        action: :home_screen,
        # action: :swap_center_controller,
        arguments: HomeScreen
      },{
        title: 'Map',
        action: :open_map,
        arguments: HomeScreen
      }
      ]
    }]
  end

  def swap_center_controller(screen_class)
    app_delegate.menu.center_controller = screen_class
  end

  def open_map
    open MyMapScreen.new(nav_bar: true)
  end

  def home_screen
    open HomeScreen.new(nav_bar: true)
  end
end
