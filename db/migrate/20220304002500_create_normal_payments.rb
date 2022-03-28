class CreateNormalPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :normal_payments do |t|
      t.string :credit_card
      t.belongs_to :payment, foreign_key: true

      t.timestamps
    end
  end
end
