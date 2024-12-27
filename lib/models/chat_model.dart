class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    this.isActive = false,
  });
}
