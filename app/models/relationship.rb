class Relationship < ApplicationRecord
  def change
    create_table :relationships do |t|
      belongs_to :user
      belongs_to :follow, class_name: 'User'
    
      validates :user_id, presence: true
      validates :follow_id, presence: true
    end
  end
end
