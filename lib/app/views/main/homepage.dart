import 'package:flutter/material.dart';
import 'package:flutter_file_sharing_app/app/views/pages/history_page.dart';
import 'package:flutter_file_sharing_app/app/views/pages/receive_page.dart';
import 'package:flutter_file_sharing_app/app/views/pages/send_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int _pageIndex = 0;
final _tabList = [
  const SendPage(),
  const ReceivePage(),
  const HistoryPage(),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabList.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
                alignment: const Alignment(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: BottomNavigationBar(
                      selectedItemColor: Colors.white,
                      unselectedItemColor: Colors.white54,
                      showSelectedLabels: true,
                      showUnselectedLabels: true,
                      backgroundColor: Colors.black,
                      currentIndex: _pageIndex,
                      onTap: (int index) {
                        setState(() {
                          _pageIndex = index;
                        });
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            'assets/icons/right-up.png',
                            width: 15,
                            height: 14,
                            color:
                                _pageIndex == 0 ? Colors.white : Colors.white54,
                          ),
                          label: 'Send',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            'assets/icons/down-left-arrow.png',
                            width: 20,
                            height: 20,
                            color:
                                _pageIndex == 1 ? Colors.white : Colors.white54,
                          ),
                          label: 'Receive',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(
                            'assets/icons/history.png',
                            width: 20,
                            height: 20,
                            color:
                                _pageIndex == 2 ? Colors.white : Colors.white54,
                          ),
                          label: 'History',
                        ),
                      ]),
                )),
          )
        ],
      ),
    );
  }
}
