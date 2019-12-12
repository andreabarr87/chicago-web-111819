titles = %w(peace love happiness)

titles.each do |title_iterated_over|
  Wish.create(title: title_iterated_over)
end
