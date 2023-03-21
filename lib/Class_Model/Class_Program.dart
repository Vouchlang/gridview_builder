// class Program {
//   late final String image;
//   late final String fac_name;
//   late final List<Program> list_major;
//
//   Program({required this.image, required this.fac_name, this.list_major = const []});
// }
//
// List<Program> program = [
//   Program(
//       image: 'assets/image/f-economic.png',
//       fac_name: 'មហាវិទ្យាល័យសេដ្ឋកិច្ច ពាណិជ្ជកម្មនិងទេសចរណ៍',
//       list_major : [
//         Program(image: 'assets/image/f-economic.png', fac_name: 'គ្រប់គ្រង'),
//         Program(image: 'assets/image/f-economic.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//       ]
//   ),
//   Program(
//       image: 'assets/image/f-it.png',
//       fac_name: 'មហាវិទ្យាល័យវិទ្យាសាស្ត្រ និងបច្ចេកវិទ្យា',
//       list_major : [
//         Program(image: 'assets/image/f-it.png', fac_name: 'ស្ថាបត្យកម្ម'),
//         Program(image: 'assets/image/f-it.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//       ]),
//   Program(
//       image: 'assets/image/f-law.png',
//       fac_name: 'មហាវិទ្យាល័យវិទ្យាសាស្ត្រសង្គម និងនីតិសាស្ត្រ',
//       list_major : [
//         Program(image: 'assets/image/f-law.png', fac_name: 'គ្រប់គ្រង'),
//         Program(image: 'assets/image/f-law.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//       ]),
//   Program(
//       image: 'assets/image/f-art.png',
//       fac_name: 'មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្ត្រ និងអប់រំ',
//       list_major : [
//         Program(image: 'assets/image/f-law.png', fac_name: 'ម៉ាឃីតធីង'),
//         Program(image: 'assets/image/f-law.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//       ]),
//   Program(
//       image: 'assets/image/fli.png',
//       fac_name: 'មហាវិទ្យាល័យអន្តរជាតិ',
//       list_major : [
//         Program(image: 'assets/image/fli.png', fac_name: 'ម៉ាឃីតធីង'),
//         Program(image: 'assets/image/fli.png', fac_name: 'ម៉ាឃីតធីង'),
//       ]),
//   Program(
//       image: 'assets/image/f-internation-college.png',
//       fac_name: 'វិទ្យាស្ថានភាសាបរទេស',
//       list_major : [
//         Program(image: 'assets/image/f-internation.png', fac_name: 'ម៉ាឃីតធីង'),
//         Program(image: 'assets/image/f-internation.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//       ]),
//   Program(
//       image: 'assets/image/post-graduate.png',
//       fac_name: 'សាលាថ្នាក់ក្រោយបរិញ្ញាបត្រ',
//       list_major : [
//         Program(image: 'assets/image/post-graduate.png', fac_name: 'ព័ត៌មានវិទ្យា'),
//         Program(image: 'assets/image/post-graduate.png', fac_name: 'គ្រប់គ្រង'),
//       ]),
// ];

class BasicTile {
  late final String image;
  late final String title;
  late final List<BasicTile> tiles;

  BasicTile({required this.image, required this.title, this.tiles = const []});
}

final basicTiles = <BasicTile>[
  BasicTile(
      image: 'assets/image/f-economic.png',
      title: 'មហាវិទ្យាល័យសេដ្ឋកិច្ច ពាណិជ្ជកម្ម និងទេសចរណ៍',
      tiles : [
        BasicTile(image: 'assets/image/f-economic.png', title: 'គ្រប់គ្រង'),
        BasicTile(image: 'assets/image/f-economic.png', title: 'ម៉ាឃីតធីង'),
      ]
  ),
  BasicTile(
      image: 'assets/image/f-it.png',
      title: 'មហាវិទ្យាល័យវិទ្យាសាស្ត្រ និងបច្ចេកវិទ្យា',
      tiles : [
        BasicTile(image: 'assets/image/f-it.png', title: 'ស្ថាបត្យកម្ម'),
        BasicTile(image: 'assets/image/f-it.png', title: 'ព័ត៌មានវិទ្យា'),
      ]
  ),
  BasicTile(
      image: 'assets/image/f-law.png',
      title: 'មហាវិទ្យាល័យវិទ្យាសាស្ត្រសង្គម និងនីតិសាស្ត្រ',
      tiles : [
        BasicTile(image: 'assets/image/f-law.png', title: 'នីតិសាស្ត្រ'),
        BasicTile(image: 'assets/image/f-law.png', title: 'រដ្ឋបាលសាធារណៈ'),
      ]
  ),
  BasicTile(
      image: 'assets/image/f-art.png',
      title: 'មហាវិទ្យាល័យសិល្បៈ មនុស្សសាស្ត្រ និងអប់រំ',
      tiles : [
        BasicTile(image: 'assets/image/f-art.png', title: 'អក្សរសាស្ត្រខ្មែរ'),
        BasicTile(image: 'assets/image/f-art.png', title: 'ប្រវិត្តវិទ្យា'),
      ]
  ),
  BasicTile(
      image: 'assets/image/fli.png',
      title: 'មហាវិទ្យាល័យអន្តរជាតិ',
      tiles : [
        BasicTile(image: 'assets/image/fli.png', title: 'ACCA'),
      ]
  ),
  BasicTile(
      image: 'assets/image/f-internation-college.png',
      title: 'វិទ្យាស្ថានភាសាបរទេស',
      tiles : [
        BasicTile(image: 'assets/image/f-internation-college.png', title: 'បង្រៀនភាសាអង់គ្លេស'),
        BasicTile(image: 'assets/image/f-internation-college.png', title: 'បកប្រែភាសាអង់គ្លេស'),
      ]
  ),
  BasicTile(
      image: 'assets/image/post-graduate.png',
      title: 'សាលាថ្នាក់ក្រោយបរិញ្ញាបត្រ',
      tiles : [
        BasicTile(image: 'assets/image/post-graduate.png', title: 'ថ្នាក់បរិញ្ញាបត្រជាន់ខ្ពស់'),
        BasicTile(image: 'assets/image/post-graduate.png', title: 'ថ្នាក់បណ្ឌិត'),
      ]
  ),
];
