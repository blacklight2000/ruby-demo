require 'rubygems'
require 'sinatra'
require 'active_record'

=begin
 :host
 :username
 :password

=end

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-08.sqlite3.db'
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
datatypes:         
  :binary 
  :boolean
  :date 
  :datetime 
  :decimal, :precision (no. of significant digits), :scale (rounding) 
  :float 
  :integer 
  :primary_key, :io (true, false) 
  :references
  :string
  :text 
  :time 
  :timestamp
option(all dtatypes):   :io (false i.e. don't want a primary key) 
options(all datatypes): :default, 
options(all datatypes): :null (true, false)
options(:string, :text): :limit (in characters)
Source: http://guides.rubyonrails.org/migrations.html#supported-types
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

