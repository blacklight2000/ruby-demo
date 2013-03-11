require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-05.sqlite3.db'
)

class EmployeesTable < ActiveRecord::Migration
  def self.create_table
     create_table :employees do |t|
       t.string :name
       t.integer :salary
     end
  end
  def self.drop_table
     drop_table :employees
  end
  def self.add_column(column,type)
    change_table :employees do |t|
      case type
        when "primary_key"
          t.primary_key column.to_sym
        when "string"
          t.string column.to_sym
        when "text"
          t.text column.to_sym
      end
    end
  end
  def self.drop_column(column)
    remove_column :employees, column.to_sym
  end
end

