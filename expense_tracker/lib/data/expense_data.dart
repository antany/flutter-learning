import 'package:expense_tracker/models/expense.dart';

List<Expense> get sampleExpenses{
  return [
    Expense(title: 'Groceries', amount: 100.0, date: DateTime.now(), category: Category.food),
    Expense(title: 'Uber', amount: 50.0, date: DateTime.now(), category: Category.transport),
    Expense(title: 'Shirt', amount: 30.0, date: DateTime.now(), category: Category.clothing),
    Expense(title: 'Toy', amount: 20.0, date: DateTime.now(), category: Category.toys),
    Expense(title: 'Headphones', amount: 200.0, date: DateTime.now(), category: Category.electronics),
    Expense(title: 'Dance Class', amount: 150.0, date: DateTime.now(), category: Category.classes),
  ];
}