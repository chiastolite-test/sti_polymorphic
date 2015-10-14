class PolymorphicArticle < ActiveRecord::Base
  belongs_to :user
  has_many :polymorphic_article_items, dependent: :destroy

  def article_items
    polymorphic_article_items.map(&:polymorphic_item)
  end
end
