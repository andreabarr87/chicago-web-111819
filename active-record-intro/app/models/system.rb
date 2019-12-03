class System < ActiveRecord::Base
  has_many :planets
  # Assuming: a class/table exists called Planet/planets;
  # a foreign key of THIS CLASS NAME _id ("system_id") exists on that table
end
