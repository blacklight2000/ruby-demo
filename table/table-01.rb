require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'act-01.sqlite3.db'
)

ActiveRecord::Migration.create_table :employee do |t|
  t.string :name
  t.integer :salary
end

