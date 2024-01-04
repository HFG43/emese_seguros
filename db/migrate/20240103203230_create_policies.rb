class CreatePolicies < ActiveRecord::Migration[7.0]
  def change
    create_table :policies do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.references :risk, null: false, foreign_key: { to_table: :risks}
      t.string :numer, null: false
      t.string :company, null: false
      t.string :description, null: false
      
      t.timestamps
    end
  end
end
