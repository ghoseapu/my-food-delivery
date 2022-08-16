class Dish < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    belongs_to :user, optional: true
    has_many :line_items
    
    mount_uploader :image, ImageUploader
    serialize :image, JSON # adding this line as we are using SQLite
    
    validates :title, :category, :price, presence: true
    validates :description, length: { maximum: 1000, too_long: "maximum %{count} characters are allowed. "}
    validates :title, length: { maximum: 140, too_long: "maximum %{count} characters are allowed. "}
    validates :price, length: { maximum: 7 }
    
    CATEGORY = %w{ Breakfast Lunch Dinner }
    
    private
    
    def not_refereced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, "Line items present")
            throw :abort
        end
    end

end
