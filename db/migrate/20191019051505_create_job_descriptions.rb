class CreateJobDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :job_descriptions do |t|
      t.string :job_title
      t.string :department
      t.string :internal_code
      t.string :country
      t.string :region
      t.boolean :remote
      t.text :description
      t.text :requirements
      t.text :benefits
      t.string :industry
      t.string :job_function
      t.integer :hours_per_week
      t.string :experience
      t.string :education
      t.string :keywords
      t.integer :salary_rate
      t.string :salary_currency

      t.timestamps
    end

    add_monetize :job_descriptions,
                 :salary_min,
                 currency: { present: false },
                 amount: { null: true, default: nil }

    add_monetize :job_descriptions,
                 :salary_max,
                 currency: { present: false },
                 amount: { null: true, default: nil }
  end
end
