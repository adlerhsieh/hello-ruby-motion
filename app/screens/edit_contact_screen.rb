class EditContactScreen < PM::Screen
  # open screen的時候傳args進來，要接就要加attr_accessor
  attr_accessor :contact
 
  def on_load
    @layout = EditContactLayout.new(root: self.view)
    @layout.form_view = form_screen.view
    @layout.build
    set_nav_bar_button :left, title: "Close", action: :close_modal
    self.title = self.contact.name
 
  end
 
  def close_modal
    close true
 
  end
 
  def form_screen
    @form_screen||=begin
      # 這邊接的參數()當中的參數結構，要跟傳過來的長一樣
      v = FormScreen.new({ contact: self.contact })
      self.addChildViewController v
      v.parent_screen = self
      v
    end
 
  end
 
end