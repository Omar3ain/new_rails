class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title ,default:"os-44"

      t.timestamps
    end
  end
end
