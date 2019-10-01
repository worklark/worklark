class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :legal_name, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :job_title, null: false
      t.string :phone_number, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
