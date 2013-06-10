class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.date :published_at
      t.text :content

      t.timestamps
    end
  end
end
