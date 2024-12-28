import '../models/channel_model.dart';

class ChannelsController {
  List<Channel> getChannels() {
    return [
      Channel(
        name: "Programming Hub",
        avatarImage: 'assets/mlsa.jpg',
        lastMessage: "New course on Flutter!",
        time: "10:30 AM",
      ),
      Channel(
        name: "Codic Solution",
        avatarImage: 'assets/codic.jpg',
        lastMessage: "Announces new internships!",
        time: "9:00 AM",
      ),
      Channel(
        name: "Design World",
        avatarImage: 'assets/avatar7.jpg',
        lastMessage: "Top 10 Figma plugins....",
        time: "Yesterday",
      ),
      Channel(
        name: "I'M okay",
        avatarImage: 'assets/avatar4.jpg',
        lastMessage: "New poetry announced!",
        time: "2 days ago",
      ),
      Channel(
        name: "Music Lovers",
        avatarImage: 'assets/avatar5.jpg',
        lastMessage: "Top 10 albums of 2024",
        time: "3 days ago",
      ),
    ];
  }
}
