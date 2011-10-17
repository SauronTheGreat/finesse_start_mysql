class Expense < ActiveRecord::Base
  #relationships
  has_many :expense_options
  belongs_to :expense_type


  # a class method which can be called by any class to create an expense
  def self.create_expense(type_of_expense,name)
    @expense=Expense.new
    @expense.expense_type_id=type_of_expense
    @expense.name=name
    @expense.save!
  end
end
