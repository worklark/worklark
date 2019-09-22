class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.string :name, required: true
      t.string :business, required: true
      t.string :email, required: true
      t.boolean :approved, default: false

      t.timestamps
    end
    add_index :invitations, :email, unique: true
  end
end
