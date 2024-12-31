import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expense_list.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:expense_tracker/widgets/add_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  void showAddExpense() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return AddExpense();
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expenses'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: showAddExpense,
            ),
          ],
        ),
        body: Center(
          child: ExpenseList(expenses: sampleExpenses),
        ),
      ),
    );
  }
}
