class AboutScreen < PM::GroupedTableScreen
  title "About"

  def table_data
    # @switch = App::Persistence['switch'] ? App::Persistence['switch'].first : false
    @about_table_data ||= [{
      title: "Help",
      cells: [
        {title: "Setting 1"},
        {title: "Setting 2"},
        {title: "switch",
         accessory: {
          view: :switch,
          action: :switched,
          # value: @switch,
          value: App::Persistence['switch'],
          arguments: {message: "Switched!"}
         }
        }
      ]
    }]
  end

  def switched(args={})
    message = args[:value] == true ? "ON" : "Off"
    App.alert "Switched to #{message}"
    App::Persistence['switch'] = args[:value]
  end
end
