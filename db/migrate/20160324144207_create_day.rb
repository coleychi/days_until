class CreateDay < ActiveRecord::Migration
  
  def change
      create_table :days do |t|
      t.string :name
      t.datetime :date
      t.text :description

      t.belongs_to :user
    end

  end
end
