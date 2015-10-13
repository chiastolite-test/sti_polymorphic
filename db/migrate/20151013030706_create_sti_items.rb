class CreateStiItems < ActiveRecord::Migration
  def change
    create_table :sti_items do |t|
      t.references :sti_article, index: true, foreign_key: true
      t.text :description
      t.string :url
      t.string :label

      t.timestamps null: false
    end
  end
end
