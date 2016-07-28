class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'

    create_table :posts, id: :uuid do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
