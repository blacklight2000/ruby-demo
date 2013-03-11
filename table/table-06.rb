require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-06.sqlite3.db'
)

class EmployeesTable < ActiveRecord::Migration
  def self.createtable
     create_table :employees do |t|
       t.string :name
       t.integer :salary
     end
  end
  def self.droptable
     drop_table :employees
  end
=begin
=end
  def self.addcolumn(column,type)
    change_table :employees do |t|
      t.send(type,column.to_sym)
    end
  end
  def self.dropcolumn(column)
    remove_column :employees, column.to_sym
  end
end

