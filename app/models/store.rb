def self.search(search)
  if search
    find(:all, :condition => ['title LIKE?', "%#{search}%"])
  else
    find(:all)
  end
end