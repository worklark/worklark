class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.string :name, null: false
      t.string :business, null: false
      t.string :email, null: false
      t.boolean :approved, default: false

      t.timestamps
    end
    add_index :invitations, :email, unique: true
  end
end
