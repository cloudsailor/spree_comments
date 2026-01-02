class Spree::CommentType < ActiveRecord::Base
  has_many :comments

  validates :name, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[id name applies_to created_at updated_at]
  end
end
