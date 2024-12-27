import 'package:flutter/material.dart';

import '../models/update_model.dart';

class UpdateItem extends StatelessWidget {
  final Update update;

  const UpdateItem({super.key, required this.update});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 164,
        width: 94,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey[400]!, width: 1),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(update.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.transparent,
                child: CircleAvatar(
                  radius: 15, // Inner radius
                  backgroundColor: Colors.transparent,
                  foregroundColor: Color(0xFF1877F2),
                  backgroundImage: AssetImage(update.avatarImage),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                update.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
