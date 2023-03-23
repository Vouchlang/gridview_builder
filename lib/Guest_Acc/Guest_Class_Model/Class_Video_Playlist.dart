class Video_PlayList{
  late final String img;
  late final String title;
  late final String caption;
  late final String link;

  Video_PlayList({required this.img, required this.title, required this.caption, required this.link});
}

List<Video_PlayList> video_playlist = [
  Video_PlayList(
      img: 'assets/image/1.jpg',
      title: 'សកម្មភាពនៃការចុះកម្មសិក្សាបង្រៀននិស្សិតថ្នាក់បរិញ្ញាបត្រ មុខជំនាញបង្រៀនភាសាអង់គ្លេស',
      caption: 'សកម្មភាពនៃការចុះកម្មសិក្សាបង្រៀននិស្សិតថ្នាក់បរិញ្ញាបត្រ មុខជំនាញបង្រៀនភាសាអង់គ្លេស',
      link: 'https://www.youtube.com/watch?v=HmA1WGoDi30'),
  Video_PlayList(
      img: 'assets/image/1.jpg',
      title: 'វីដេអូទាក់ទងនឹងការចុះឈ្នោះចូលរៀនថ្នាក់បរិញ្ញបត្រ',
      caption: 'វីដេអូទាក់ទងនឹងការចុះឈ្នោះចូលរៀនថ្នាក់បរិញ្ញបត្រ',
      link: 'https://www.youtube.com/watch?v=HmA1WGoDi30'),
];