class CreateStiArticles < ActiveRecord::Migration
  def change
    create_table :sti_articles do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
