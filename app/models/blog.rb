class Blog < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true

    belongs_to :user
    has_many :comments, dependent: :destroy

    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user

end
