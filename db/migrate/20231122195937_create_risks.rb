class CreateRisks < ActiveRecord::Migration[7.0]
  def change
    create_table :risks do |t|
      t.string :type, null: false

      t.timestamps
    end
  end
end
