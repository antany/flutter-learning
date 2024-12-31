
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import   'package:flutter/material.dart';

const uuid = Uuid();
final dtFormatter = DateFormat.yMd();

enum Category{
  food,
  transport,
  clothing,
  toys,
  electronics,
  classes
}

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.transport: Icons.directions_car,
  Category.clothing: Icons.shopping_bag,
  Category.toys: Icons.toys,
  Category.electronics: Icons.phone_iphone,
  Category.classes: Icons.menu_book,
};

class Expense{

  String id;
  String title;
  double amount;
  DateTime date;  
  Category category;

  Expense({required this.title, required this.amount, required  this.date,  required  this.category}): id = uuid.v4();

  String get formattedDate => dtFormatter.format(date);
}