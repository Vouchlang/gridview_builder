import 'package:flutter/material.dart';
import 'package:gridview_builder/Guest_Dashboard/FAQ/FAQ.dart';

class Program_Bachelor_Year {
  late final String name;
  late final Widget screen;

  Program_Bachelor_Year({required this.name, required this.screen});
}

List<Program_Bachelor_Year> pro_bach_year = [
  Program_Bachelor_Year(name: 'ឆ្នាំទី១', screen: FAQ()),
  Program_Bachelor_Year(name: 'ឆ្នាំទី២', screen: FAQ()),
  Program_Bachelor_Year(name: 'ឆ្នាំទី៣', screen: FAQ()),
  Program_Bachelor_Year(name: 'ឆ្នាំទី៤', screen: FAQ())

];