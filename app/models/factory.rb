class Factory < ActiveRecord::Base

  has_many :employees

  #after_save :create_factory_expense
  #def create_factory_expense
  #  @expense_type=ExpenseType.find_by_name("Factory")
  #
  #  Expense.create_expense(@expense_type.id,name)
  #end
end
