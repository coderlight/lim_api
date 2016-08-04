class AddPageRefToUrlTags < ActiveRecord::Migration
  def change
    add_reference :url_tags, :page, index: true, foreign_key: true
  end
end
