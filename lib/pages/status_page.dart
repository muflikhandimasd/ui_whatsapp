import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/status.dart';

class Statuspage extends StatelessWidget {
  const Statuspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, position) {
          var status = statusList[position];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 64.0,
                ),
                // Container(
                //   width: 58,
                //   height: 58,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: AssetImage(
                //         status.image,
                //       ),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
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
                              status.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          status.statusTime,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
