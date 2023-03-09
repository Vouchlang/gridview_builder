import 'package:flutter/material.dart';


class Scholarship {
  late final String school_name;
  late final String educational_level;
  late final String major;
  late final String exprire;
  late final String expire_date;
  late final String link;

  Scholarship(
      {required this.school_name,
        required this.educational_level,
        required this.major,
        required this.exprire,
        required this.expire_date,
        required this.link});
}

List<Scholarship> scholarship = [
  Scholarship(
      school_name: 'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ',
      educational_level: 'ថា្នក់បរិញ្ញាបត្រ',
      major: 'ព័ត៌មានវិទ្យា',
      exprire: 'ផុតកំណត់៖',
      expire_date: 'ថ្ងៃទី០៧ ខែកុម្ភៈ ឆ្នាំ២០២៣ វេលាម៉ោង១៧ និង៣០នាទី',
      link: 'https://www.usea.edu.kh/en/ButtomPages/scholarship.php'),
  Scholarship(
      school_name: 'បណ្ដាសាកលវិទ្យាល័យនៅប្រទេសចិន',
      educational_level: 'គ្រប់ថ្នាក់សិក្សា',
      major: 'គ្រប់ជំនាញ',
      exprire: 'ផុតកំណត់៖',
      expire_date: 'ថ្ងៃទី០៧ ខែកុម្ភៈ ឆ្នាំ២០២៣ វេលាម៉ោង១៧ និង៣០នាទី',
      link: 'https://www.usea.edu.kh/en/Pages/index.php'),
];