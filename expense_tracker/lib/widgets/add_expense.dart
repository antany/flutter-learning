import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _amountController,
            decoration: InputDecoration(labelText: 'Amount', prefixText: '\$'),
            keyboardType: TextInputType.number,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer()
              ,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('test message') ;
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: Text('Save Expense'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
