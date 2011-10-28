class Factory < ActiveRecord::Base

  has_many :employees, :dependent => :destroy

  after_save :create_factory_expense, :initiate_employees

  def create_factory_expense
    @expense_type=ExpenseType.find_by_name("Factory")

    Expense.create_expense(@expense_type.id, name)
  end


  def initiate_employees
    Employee.create_employee_by_factory(self.id)
  end


end


