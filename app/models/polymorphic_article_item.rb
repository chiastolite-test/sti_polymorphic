class PolymorphicArticleItem < ActiveRecord::Base
  belongs_to :polymorphic_article
  belongs_to :polymorphic_item, polymorphic: true, dependent: :destroy
end
