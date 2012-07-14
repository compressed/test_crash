class AppDelegate
	attr_accessor :window, :navigationController

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @tabbar = UITabBarController.alloc.init
    @firstController = FirstController.alloc.initWithStyle(UITableViewStyleGrouped)

    tab1 = UITabBarItem.alloc.initWithTitle('List', image:nil, tag:1)

    @tabbar.selectedIndex = 0
    @secondController = SecondController.alloc.init

    @tabbar.viewControllers = [@firstController, @secondController]

    tab1 = UITabBarItem.alloc.initWithTitle('First', image:nil, tag:1)
    @firstController.setTabBarItem tab1

    tab2 = UITabBarItem.alloc.initWithTitle('Second', image:nil, tag:2)
    @secondController.setTabBarItem tab2

    navigationController.toolbarHidden = true
    return true if RUBYMOTION_ENV == 'test'

    @window.rootViewController = self.navigationController
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end

  def navigationController
    @navigationController ||= UINavigationController.alloc.initWithRootViewController(@tabbar)
  end
end
