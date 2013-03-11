require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-07.sqlite3.db'
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
  def self.addcolumn(hash)
    hash.keys.each do |hk|
      column = hk
      type = hash[hk]
      change_table :employees do |t|
         t.send(type,column.to_sym)
      end
    end
  end
  def self.dropcolumn(array)
    array.each do |ar|
      column = ar
      remove_column :employees, column.to_sym
    end
  end
end

