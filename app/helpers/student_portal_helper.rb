module StudentPortalHelper
  def formattedDate(time)
    time.strftime('%D')
  end
  def sortByDate(items)
    items.sort_by &:created_at
  end
end
