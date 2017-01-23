def find_next_page
  coll = page.parent.pages
  coll.at(coll.index(page) + 1)
end
