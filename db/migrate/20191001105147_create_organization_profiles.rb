class CreateOrganizationProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_profiles do |t|
      t.string :registered_name
      t.string :operating_name, null: false
      t.string :shortname, null: false
      t.string :website, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
