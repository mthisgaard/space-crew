class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :comment
      t.references :crew_member, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
