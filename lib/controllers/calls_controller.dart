

import '../models/call_model.dart';

class CallsController {
  List<Call> getCalls() {
    return [
      Call(
        name: "Aisha Sis",
        callType: "outgoing",
        dateTime: "December 15, 12:01 PM",
        callCount: "",
        isVideo: true,
        imagePath: 'assets/bg2.jpg',
      ),
      Call(
        name: "Aisha Sis",
        callType: "incoming",
        dateTime: "December 15, 9:43 AM",
        callCount: "(2)",
        isVideo: true,
        isMissed: true,
        imagePath: 'assets/bg2.jpg',
      ),
      Call(
        name: "Hajra",
        callType: "outgoing",
        dateTime: "December 7, 6:04 PM",
        callCount: "",
        isVideo: false,
        imagePath: 'assets/bg3.jpg',
      ),
      Call(
        name: "Baba",
        callType: "incoming",
        dateTime: "December 7, 12:38 PM",
        callCount: "",
        isVideo: false,
        isMissed: true,
        imagePath: 'assets/img.jpg',
      ),
      Call(
        name: "Momna",
        callType: "outgoing",
        dateTime: "December 7, 9:54 AM",
        callCount: "(2)",
        isVideo: false,
        imagePath: 'assets/avatar4.jpg',
      ),
      Call(
        name: "Baba",
        callType: "outgoing",
        dateTime: "December 6, 6:04 PM",
        callCount: "",
        isVideo: true,
        imagePath: 'assets/img.jpg',
      ),
      Call(
        name: "Mamu",
        callType: "incoming",
        dateTime: "December 6, 10:44 PM",
        callCount: "(3)",
        isVideo: false,
        isMissed: true,
        imagePath: 'assets/bg3.jpg',
      ),
      Call(
        name: "Baba",
        callType: "outgoing",
        dateTime: "December 5, 12:00 PM",
        callCount: "",
        isVideo: false,
        imagePath: 'assets/img.jpg',
      ),
      Call(
        name: "Bestie",
        callType: "incoming",
        dateTime: "December 4, 1:24 AM",
        callCount: "(4)",
        isVideo: true,
        isMissed: true,
        imagePath: 'assets/avatar5.jpg',
      ),
      Call(
        name: "Sadaf",
        callType: "incoming",
        dateTime: "December 3, 3:54 PM",
        callCount: "",
        isVideo: false,
        imagePath: 'assets/bg8.jpg',
      ),
    ];
  }
}
