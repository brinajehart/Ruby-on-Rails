class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :ime
      t.string :opis
      t.integer :stevilka

      t.timestamps
    end
  end
end
