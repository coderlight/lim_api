class AddPageRefToH2Tags < ActiveRecord::Migration
  def change
    add_reference :h2_tags, :page, index: true, foreign_key: true
  end
end
