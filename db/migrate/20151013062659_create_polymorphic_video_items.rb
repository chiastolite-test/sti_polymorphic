class CreatePolymorphicVideoItems < ActiveRecord::Migration
  def change
    create_table :polymorphic_video_items do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
