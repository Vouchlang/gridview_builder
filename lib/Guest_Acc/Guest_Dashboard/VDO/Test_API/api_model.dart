class Event {
  final String image;
  final String title;
  final String detail;
  final String day;
  final String date;
  final String month;
  final String year;

  Event(
      {required this.image,
      required this.title,
      required this.detail,
      required this.day,
      required this.date,
      required this.month,
      required this.year});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      image: json['upcoming_image'],
      title: json['upcoming_title'],
      detail: json['upcoming_detail'],
      day: json['upcoming_day'],
      date: json['upcoming_date'],
      month: json['upcoming_month'],
      year: json['upcoming_year'],
    );
  }
}
