class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.references :User1, null: false, :class_name => "User1", foreign_key: { to_table:'users' }
      t.references :Users2, null: false, :class_name => "User2", foreign_key: { to_table:'users' }

      t.timestamps
    end
  end
end
