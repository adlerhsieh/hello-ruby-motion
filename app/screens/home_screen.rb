class HomeScreen < PM::TableScreen
  title '通訊錄'
  searchable placeholder: "Search for a contact..."

  def on_load
    set_nav_bar_button :right, title: "About", action: :show_about
    set_nav_bar_button :left, title: "Menu", action: :show_menu
    set_attributes self.view, {
      background_color: hex_color("#D8D8D8")
    }
    # open MyMapScreen.new(nav_bar: true)
  end

  def table_data
    [{
      cells: Contact.all.map do |contact|
        {
          title: contact.name,
          action: :edit_contact,
          arguments: {contact: contact}
        }
      end
    }]
  end

  def show_about
    # open AboutWebScreen.new(nav_bar: true)
    open AboutScreen.new(nav_bar: true)
  end

  def show_menu
    app_delegate.menu.show(:left)
  end

  def edit_contact(args={})
    open EditContactScreen.new(args), nav_bar: true, modal: true
  end
end
