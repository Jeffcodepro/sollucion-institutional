class CreateContactLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_leads do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.string :interest
      t.text :message
      t.integer :status
      t.string :source

      t.timestamps
    end
  end
end
