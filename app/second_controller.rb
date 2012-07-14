class SecondController < UIViewController
  attr_accessor :tbl_vw

  def viewDidLoad
    super

    @tbl_vw = UITableView.alloc.initWithFrame([[5,75],[310,100]], style:UITableViewStyleGrouped)
    @tbl_vw.dataSource = @tbl_vw.delegate = TestDelegate.alloc.initWithTableView(@tbl_vw)
    @tbl_vw.backgroundColor = UIColor.clearColor
    @tbl_vw.separatorStyle = UITableViewCellSeparatorStyleSingleLine
    self.view.addSubview(@tbl_vw)
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
  end
end
