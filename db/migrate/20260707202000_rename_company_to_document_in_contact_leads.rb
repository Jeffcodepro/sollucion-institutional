class RenameCompanyToDocumentInContactLeads < ActiveRecord::Migration[7.1]
  def change
    rename_column :contact_leads, :company, :document
  end
end
