class CreateRisks < ActiveRecord::Migration[7.0]
  def change
    create_table :risks do |t|

      t.timestamps
    end
  end
end
