class Call {
  final String name;
  final String callType;
  final String dateTime;
  final String callCount;
  final bool isVideo;
  final bool isMissed;
  final String imagePath;

  Call({
    required this.name,
    required this.callType,
    required this.dateTime,
    required this.callCount,
    required this.isVideo,
    this.isMissed = false,
    required this.imagePath,
  });
}
