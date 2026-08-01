class CreateResourceDescriptions < ActiveRecord::Migration[8.1]
  def change
    create_table :resource_descriptions do |t|
      t.string :title
      t.string :description
      t.string :url
      t.belongs_to :image, null: false, foreign_key: true
      t.belongs_to :tweet, null: false, type: :string

      t.timestamps
    end

    add_foreign_key :resource_descriptions, :tweets, column: :tweet_id, primary_key: :uuid, on_delete: :cascade
  end
end
