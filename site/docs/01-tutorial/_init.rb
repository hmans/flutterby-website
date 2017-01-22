extend_siblings do
  def next_page
    siblings.find { |n| n.page? && n.prefix > prefix }
  end

  def previous_page
    siblings.reverse.find { |n| n.page? && n.prefix < prefix }
  end
end
