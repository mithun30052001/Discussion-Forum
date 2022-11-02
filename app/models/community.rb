class Community < ApplicationRecord
   validates :community, presence: true, uniqueness: true
   has_many :discussions ,dependent: :destroy
   has_many :users, through: :discussions
   

   resourcify

  extend FriendlyId
  friendly_id :community, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
    community_changed?
  end
end
