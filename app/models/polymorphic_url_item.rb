class PolymorphicUrlItem < ActiveRecord::Base
  has_one :polymorphic_article_item, as: :polymorphic_item
  has_one :polymorphic_article, through: :polymorphic_article_item
end
