import 'package:flutter/material.dart';
import 'package:openticket_mobile/pages/home_page.dart';
import 'package:openticket_mobile/pages/history_page.dart';
import 'package:openticket_mobile/pages/my_page.dart';
import 'package:openticket_mobile/pages/open_page.dart';
import 'package:openticket_mobile/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    My(),
    Open(),
    History(),
    Profile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: Color(0xff774360),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: FloatingActionButton(
        backgroundColor: Color(0xffB25068),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            currentScreen = Open();
          });
        },
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff4C3A51),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width/4 - 17,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Color(0xffE7AB79) : Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 0 ? Color(0xffE7AB79) : Colors.white,
                            fontSize: 12,
                            letterSpacing: 4/10
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width/4 - 17,
                    onPressed: () {
                      setState(() {
                        currentScreen = My();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send_rounded,
                          color: currentTab == 1 ? Color(0xffE7AB79) : Colors.white,
                        ),
                        Text(
                          "Ticket",
                          style: TextStyle(
                            color: currentTab == 1 ? Color(0xffE7AB79) : Colors.white,
                            fontSize: 12,
                            letterSpacing: 4/10
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width/4 - 17,
                    onPressed: () {
                      setState(() {
                        currentScreen = History();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          color: currentTab == 2 ? Color(0xffE7AB79) : Colors.white,
                        ),
                        Text(
                          "History",
                          style: TextStyle(
                            color: currentTab == 2 ? Color(0xffE7AB79) : Colors.white,
                            fontSize: 12,
                            letterSpacing: 4/10
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width/4 - 17,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 4 ? Color(0xffE7AB79) : Colors.white,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: currentTab == 4 ? Color(0xffE7AB79) : Colors.white,
                            fontSize: 12,
                            letterSpacing: 4/10
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
