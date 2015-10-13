class CreatePolymorphicArticles < ActiveRecord::Migration
  def change
    create_table :polymorphic_articles do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
