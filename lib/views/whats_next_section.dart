import 'package:flutter/material.dart';

class WhatsNextSection extends StatelessWidget {
  const WhatsNextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What’s next?",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Circular corners
                        child: Image.asset(
                          "assets/avatar3.jpg", // Use your image asset path here
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Text(
                            "Real results from ads",
                            style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Adjusted the padding to reduce gap between the texts
                const Padding(
                  padding: EdgeInsets.only(left: 96.0, top: 0.0), // Reduced top gap for the second text
                  child: Text(
                    "See how businesses like yours are getting new customers on Whatsapp",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
               // Reduced gap before the button
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      width: 250,  // Adjust the width as needed
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                        child: const Text(
                          "Watch video",
                          style: TextStyle(
                            color: Colors.black,  // Set the text color to black
                          ),
                        ),
                      ),
                    ),
                  ),
                )

              ],

            ),

          ),
        ],
      ),
    );
  }
}
