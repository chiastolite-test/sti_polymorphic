class CreateStiItems < ActiveRecord::Migration
  def change
    create_table :sti_items do |t|
      t.references :sti_article, index: true, foreign_key: true
      t.string :type, null: false
      t.text :description
      t.string :url
      t.string :label

      t.timestamps null: false

      t.index [:sti_article_id, :url], unique: true
    end
  end
end
