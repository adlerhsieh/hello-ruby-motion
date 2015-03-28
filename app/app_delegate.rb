class AppDelegate < PM::Delegate
  # def application(application, didFinishLaunchingWithOptions:launchOptions)
  #   rootViewController = UIViewController.alloc.init
  #   rootViewController.title = 'hello_motion'
  #   rootViewController.view.backgroundColor = UIColor.whiteColor

  #   navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

  #   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  #   @window.rootViewController = navigationController
  #   @window.makeKeyAndVisible

  #   true
  # end
  def on_load(app, options)
      
      MotionRecord::Schema.up! do
        migration 1, "Create contact table" do
          create_table :contacts do |t|
            t.text :name, null: false
            t.text :tel
            t.text :address
            t.timestamps
          end
        end
      end

      # row = Contact.new(name: "Alen")
      # row.save
      if App::Persistence['setup'].nil?
        contacts = [
          ["Alan", "0900000000", "Taipei"],
          ["Bob", "0900000000", "Taipei"],
          ["Can", "0900000000", "Taipei"],
          ["Daniel", "0900000000", "Taipei"],
          ["Ellen", "0900000000", "Taipei"],
          ["Franco", "0900000000", "Taipei"]
        ]

        contacts.each do |contact|
          row = Contact.new(name: contact[0],
                            tel: contact[1],
                            address: contact[2]
                            )
          row.save
        end
        App::Persistence['setup'] = true
      end

      open_menu HomeScreen.new(nav_bar: true), left: NavigationScreen
      self.menu.controller(:left).class.name
      App::Persistence['switch'] ||= false
  end
end