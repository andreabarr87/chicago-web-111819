class Dog < ApplicationRecord
  has_many :employees
  has_many :owners, class_name: :Employee
end
