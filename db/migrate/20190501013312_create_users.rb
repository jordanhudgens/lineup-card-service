class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :password_digest
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
