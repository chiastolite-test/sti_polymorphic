class CreatePolymorphicUrlItems < ActiveRecord::Migration
  def change
    create_table :polymorphic_url_items do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
