class CreatePolymorphicTextItems < ActiveRecord::Migration
  def change
    create_table :polymorphic_text_items do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
