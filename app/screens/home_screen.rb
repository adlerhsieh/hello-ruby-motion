class HomeScreen < PM::Screen
  title 'App Home'

  def on_load
    set_nav_bar_button :right, title: "About", action: :show_about
    set_nav_bar_button :left, title: "Menu", action: :show_menu
    set_attributes self.view, {
      background_color: hex_color("#D8D8D8")
    }
    open MyMapScreen.new(nav_bar: true)
  end

  def show_about
    open AboutWebScreen.new(nav_bar: true)
  end

  def show_menu
    app_delegate.menu.show(:left)
  end

end
