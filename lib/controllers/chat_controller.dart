import '../models/chat_model.dart';

class ChatController {
  List<Chat> getChats() {
    return [
      Chat(
        name: "85 - AppDev (Females)",
        lastMessage: "Momna: Okay Sir ..",
        image: "assets/appdev.jpeg",
        time: "3m ago",
      ),
      Chat(
        name: "Baba",
        lastMessage: "Missed voice call...",
        image: "assets/img.jpg",
        time: "8m ago",
        isActive: true,
      ),
      Chat(
        name: "Aisha Sis",
        lastMessage: "AsalamoAlikum",
        image: "assets/bg3.jpg",
        time: "13m ago",
        isActive: true,
      ),
      Chat(
        name: "Hina",
        lastMessage: "Acha thik hai",
        image: "assets/bg7.jpg",
        time: "43m ago",
        isActive: true,
      ),
      Chat(
        name: "Codic Solution Community",
        lastMessage: "You are now community admin",
        image: "assets/codic.jpg",
        time: "1h ago",
      ),
      Chat(
        name: "MLSA YE EVENTS",
        lastMessage: "Sara joined using this group's invite link",
        image: "assets/mlsa.jpg",
        time: "3h ago",
      ),
      Chat(
        name: "Own Group",
        lastMessage: "You: Photo",
        image: "assets/bg4.jpg",
        time: "10:30 PM",
      ),
      Chat(
        name: "Azka Uni",
        lastMessage: "Do you have any update...",
        image: "assets/bg2.jpg",
        time: "12:56 AM",
        isActive: true,
      ),
      Chat(
        name: "Flutter Development ",
        lastMessage: "+926512736512...",
        image: "assets/codic.jpg",
        time: "3:00 AM",
        isActive: false,
      ),
      Chat(
        name: "Hajra",
        lastMessage: "ok...",
        image: "assets/bg12.jpg",
        time: "Yesterday",
        isActive: false,
      ),
      Chat(
        name: "Amna",
        lastMessage: "This message was deleted...",
        image: "assets/bg8.jpg",
        time: "Yesterday",
        isActive: false,
      ),
      Chat(
        name: "+92 200 8119669",
        lastMessage: "Do you have any update...",
        image: "assets/bg2.jpg",
        time: "12/18/24",
        isActive: true,
      ),
      Chat(
        name: "Samreen Ali",
        lastMessage: "okay...",
        image: "assets/bg6.jpg",
        time: "12/17/24",
        isActive: false,
      ),
      Chat(
        name: "Qurtubian",
        lastMessage: "You: https://www.figma.com/community...",
        image: "assets/bg14.jpg",
        time: "12/16/24",
        isActive: false,
      ),
      Chat(
        name: "Laiba Uni",
        lastMessage: "A.o.a kasi ho...?",
        image: "assets/bg1.jpg",
        time: "12/15/24",
        isActive: true,
      ),
      Chat(
        name: "Momina Tufail ",
        lastMessage: "Freelancer https://www.freelancer.com",
        image: "assets/bg2.jpg",
        time: "12/14/24",
        isActive: true,
      ),
    ];
  }
}
