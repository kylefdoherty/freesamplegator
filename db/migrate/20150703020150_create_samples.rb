class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :title
      t.string :link
      t.string :image
      t.text :summary
      t.text :content
      t.datetime :pub_date
      t.integer :site_id

      t.timestamps null: false
    end
  end
end
