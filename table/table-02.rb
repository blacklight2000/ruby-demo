require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-02.sqlite3.db'
)

class CreateEmployeesTable < ActiveRecord::Migration
  def up
     create_table :employees do |t|
       t.string :name
       t.integer :salary
     end
  end
  def down
     drop_table :employees
  end
end

class AddEmployeesRole < ActiveRecord::Migration
  def up
    change_table :employees do |t|
      t.string :role
    end
  end
  def down
    remove_column :employees, :role
  end
end

