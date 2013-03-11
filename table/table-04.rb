require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-04.sqlite3.db'
)

class EmployeesTable < ActiveRecord::Migration
  def self.create
     create_table :employees do |t|
       t.string :name
       t.integer :salary
     end
  end
  def self.drop
     drop_table :employees
  end
  def self.addcolumn_role
    change_table :employees do |t|
      t.string :role
    end
  end
  def self.removecolumn_role
    remove_column :employees, :role
  end
end

