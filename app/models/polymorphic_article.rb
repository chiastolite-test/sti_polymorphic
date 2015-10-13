class PolymorphicArticle < ActiveRecord::Base
  belongs_to :user
  has_many :polymorphic_article_items, dependent: :destroy
  has_many :polymorphic_items, through: :polymorphic_article_items
end
