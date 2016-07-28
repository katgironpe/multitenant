class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.references :user
      t.string :name
      t.string :location
      t.text :body
      t.string :subdomain

      t.timestamps
    end

    add_index :companies, :subdomain
  end
end
