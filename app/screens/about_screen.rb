class AboutScreen < PM::GroupedTableScreen
  title "About"
  def table_data
    @about_table_data ||= [{
      title: "Version 0.0.1"
    }]
  end
end
