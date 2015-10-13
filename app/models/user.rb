class User < ActiveRecord::Base
  has_many :sti_articles, dependent: :destroy
  has_many :polymorphic_articles, dependent: :destroy
end
