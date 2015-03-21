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
      open_menu HomeScreen.new(nav_bar: true), left: NavigationScreen
      self.menu.controller(:left).class.name
  end
end
