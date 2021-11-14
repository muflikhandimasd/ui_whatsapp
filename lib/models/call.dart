class Call {
  String name;
  String image;
  String callTime;

  Call({
    required this.name,
    required this.image,
    required this.callTime,
  });
}

var callList = [
  Call(
    name: 'Fulan 3',
    image: 'images/avatar.png',
    callTime: 'Today, 09.21 PM',
  ),
  Call(
    name: 'Fulan 4',
    image: 'images/avatar.png',
    callTime: 'Yesterday, 10.21 PM',
  ),
];
