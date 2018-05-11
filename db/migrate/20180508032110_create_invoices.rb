class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.string :company
      t.decimal :tax
      t.string :salesperson

      t.timestamps
    end
  end
end
