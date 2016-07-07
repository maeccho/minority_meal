class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string        :name
      t.string        :shop_name
      t.text          :explanation
      t.text          :image
      t.text          :url_link
      t.text          :address
      t.timestamps 
    end
  end
end
