class Status {
  String name;
  String image;
  String statusTime;

  Status({
    required this.name,
    required this.image,
    required this.statusTime,
  });
}

var statusList = [
  Status(
    name: 'Fulan 1',
    image: 'images/avatar.png',
    statusTime: 'Yesterday, 17.23 PM',
  ),
  Status(
    name: 'Fulan 2',
    image: 'images/avatar.png',
    statusTime: 'Yesterday, 11.21 PM',
  ),
];
