class EditContactScreen < PM::Screen
  attr_accessor :contact

  def on_load
    @layout = EditContactLayout.new(root: self.view)
    @layout.build
    set_nav_bar_button :left, title: "Close", action: :close_modal
    self.title = self.contact.name
    # set_attributes self.view, {
    #   background_color: "#FFFFFF".uicolor
    # }
  end
  
  def close_modal
    close true
  end
end
