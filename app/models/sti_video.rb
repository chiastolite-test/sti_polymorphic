class StiVideo < StiItem
  validates :url, uniqueness: {scope: :sti_article_id}
end
