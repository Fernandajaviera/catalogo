class CreateTransbankPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :transbank_payments do |t|
      t.string :credit_card
      t.string :webpay
      t.string :oneclick
      t.belongs_to :payment, foreign_key: true

      t.timestamps
    end
  end
end
