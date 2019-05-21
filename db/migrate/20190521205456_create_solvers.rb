class CreateSolvers < ActiveRecord::Migration[5.2]
  def change
    create_table :solvers do |t|
    	t.integer :quantity
    	t.integer :elimination
      t.timestamps
    end
  end
end
