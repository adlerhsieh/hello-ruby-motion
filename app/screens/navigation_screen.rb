class NavigationScreen < PM::TableScreen
  def table_data
    [{
      title: "This is a title",
      cells: [{},
              {
        title: 'Hello World',
        action: :swap_center_controller,
        arguments: HomeScreen
      },{
        title: 'Hello World 2',
        action: :swap_center_controller,
        arguments: HomeScreen
      }
      ]
    }]
  end

  def swap_center_controller(screen_class)
    app_delegate.menu.center_controller = screen_class
  end

end
