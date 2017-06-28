class CreateTechnoligies < ActiveRecord::Migration[5.0]
  def change
    create_table :technoligies do |t|
      t.string :name
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
