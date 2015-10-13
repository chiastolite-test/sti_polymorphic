class CreatePolymorphicArticleItems < ActiveRecord::Migration
  def change
    create_table :polymorphic_article_items do |t|
      t.references :polymorphic_article, index: true, foreign_key: true
      t.references :polymorphic_item, index: false, polymorphic: true

      t.timestamps null: false

      t.index [:polymorphic_item_type, :polymorphic_item_id], name: :polyitem_type_id
    end
  end
end
