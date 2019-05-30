class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :text
      t.string :image_url
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
