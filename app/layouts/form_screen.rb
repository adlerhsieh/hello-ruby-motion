class FormScreen < PM::FormScreen
  def form_data
    [{
      title: "Account Info",
      footer: "Footer",
      cells: [{
        name: "email",
        title: "ID"
      }]
    },{
    }]
  end  
end
