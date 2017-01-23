def find_next_page
  page.siblings.find { |n| n.page? && n.prefix > page.prefix }
end

def find_previous_page
  page.siblings.reverse.find { |n| n.page? && n.prefix < page.prefix }
end
