class FirstController < UITableViewController

  def viewDidLoad
    view.dataSource = view.delegate = self
    @items = []
    @items << Item.new({text:'testing 1 2 3'})
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @items.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
      cell
    end

    item = @items[indexPath.row]
    cell.textLabel.text = item.text
    cell
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    item = @items[indexPath.row]
  end

end
