import 'package:flutter/material.dart';
import 'package:ui_whatsapp/pages/call_page.dart';
import 'package:ui_whatsapp/pages/chat_page.dart';
import 'package:ui_whatsapp/pages/status_page.dart';
import 'package:ui_whatsapp/shared/theme.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({Key? key}) : super(key: key);

  @override
  _WhatsappPageState createState() => _WhatsappPageState();
}

class _WhatsappPageState extends State<WhatsappPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  var fabIcon = Icons.message;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController!.index) {
            case 0:
              fabIcon = Icons.camera;
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
            default:
          }
        });
      });
    tabController!.index = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: whatsAppGreen,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ]),
      ),
      body: TabBarView(controller: tabController, children: const [
        // Camera
        Icon(Icons.camera_alt),

        // Halaman CHAT
        ChatPage(),

        // Halaman STATUS
        Statuspage(),

        // Halaman CALL
        CallPage(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: whatsAppLightGreen,
      ),
    );
  }
}
