class StiArticle < ActiveRecord::Base
  belongs_to :user
  has_many :sti_items, dependent: :destroy
end
