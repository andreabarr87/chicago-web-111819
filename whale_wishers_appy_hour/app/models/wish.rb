class Wish < ActiveRecord::Base
  belongs_to :whale
  belongs_to :wisher, class_name: :Whale

  def truncated_title
    if title.length > 50
      return "#{title[0..48]}..."
    else
      return title
    end
  end
end
