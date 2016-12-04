class Dog < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 40, minimum: 2 }
  validates :breed, length: { maximum: 60, minimum: 3 }
  validates :nickname, length: {maximum: 40 }
  validates :story, length: { maximum: 1000}
end
