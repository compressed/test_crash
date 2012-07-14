class TestDelegate
  attr_accessor :arr

  def initWithTableView(tableView)
    @arr = ['first','second']

    self
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @arr.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator
      cell.selectionStyle = UITableViewCellSelectionStyleNone
      cell
    end
    item = @arr[indexPath.row]

    cell.textLabel.text = item

    cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    item = @arr[indexPath.row]
  end

  def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
    tableView(tableView, didSelectRowAtIndexPath:indexPath)
  end
end
