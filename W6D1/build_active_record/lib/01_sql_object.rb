require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    return @cols if @cols 
    cols = DBConnection.execute2(<<-SQL).first
    select *
    from 
    #{self.table_name}
    SQL
    cols.map! {|col| col.to_sym }
    @cols = cols
  end

  def self.finalize!
    columns.each do |name|
      define_method(name) do
        attributes[name]
      end  

        define_method("#{name}=") do |value|
          attributes[name] = value
      end
    end 
  end

  def self.table_name=(table_name)
    @table_name = table_name
    # ...
  end

  def self.table_name
    @table_name ||= self.name.underscore.pluralize
    # ...
  end

  def self.all
    all = DBConnection.execute(<<-SQL)
    select '#{self.table_name}'.*
    from  '#{self.table_name}'

  SQL
  end

  def self.parse_all(results)
    results.each do |hash|
      self.new(hash)
    end 
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    params.each do |attr_name, value|
      attr_name = attr_name.to_sym
      if self.class.columns.include?(attr_name)
        self.send("#{attr_name}=", value)
      else 
        raise "unknown attribute '#{attr_name}'"
      end 
    end
  end

  def attributes
    @attributes ||= {} 
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
