require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-03.sqlite3.db'
)

class EmployeesTable < ActiveRecord::Migration
  def create
     create_table :employees do |t|
       t.string :name
       t.integer :salary
     end
  end
  def drop
     drop_table :employees
  end
  def addcolumn_role
    change_table :employees do |t|
      t.string :role
    end
  end
  def removecolumn_role
    remove_column :employees, :role
  end
end

