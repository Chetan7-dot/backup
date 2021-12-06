atom_feed do |feed|
  feed.title("Users Index")
  feed.updated(@users.first.created_at)

  @users.each do |user|
    feed.entry(user) do |entry|
      entry.title(user.name)
      entry.content(user.name, type: 'html')
      end
    end
  end
end
