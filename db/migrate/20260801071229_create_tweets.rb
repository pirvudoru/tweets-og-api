class CreateTweets < ActiveRecord::Migration[8.1]
  def change
    create_table :tweets, primary_key: :uuid, id: :string do |t|
      t.string :content

      t.timestamps
    end
  end
end
