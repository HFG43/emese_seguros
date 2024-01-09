class CreateCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :certificates do |t|
      t.references :policy, null: false, foreign_key: { to_table: :policies }
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :type, null: false
      t.string :year, null: false
      t.string :month, null: false

      t.timestamps
    end
  end
end
