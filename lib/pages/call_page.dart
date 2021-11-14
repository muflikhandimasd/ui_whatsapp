import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, position) {
          var call = callList[position];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        call.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              call.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          call.callTime,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          );
        });
  }
}
