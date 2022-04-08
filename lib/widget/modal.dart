class Data {
  final String title;
  String left;
  final String img;
  String days;
  String deal;
  String invites;

  Data({
    required this.title,
    this.left = "",
    this.days = "",
    required this.img,
    this.deal = "",
    this.invites = "",
  });
}
