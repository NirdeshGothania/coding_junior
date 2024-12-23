import 'package:flutter/material.dart';

import 'NotificationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _searchFocusNode = FocusNode();
  bool _showSuggestions = false;

  @override
  void initState() {
    super.initState();
    _searchFocusNode.addListener(() {
      setState(() {
        _showSuggestions = _searchFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff006ef5),
        foregroundColor: Colors.white,
        title: FittedBox(
          fit: BoxFit.none,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff006ef5),
              elevation: 0,
              // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade700,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.local_fire_department_rounded,
                      color: Colors.orange.shade800),
                ),
                const SizedBox(width: 5),
                Stack(
                  children: [
                    Text(
                      "08",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2.0
                          ..color = Colors.yellow, // Border color
                      ),
                    ),
                    // Fill Text
                    const Text(
                      "08",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.red, // Fill color
                      ),
                    ),
                  ],
                ),
                // const SizedBox(width: 5),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.yellow.shade700,
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 115,
                  child: FilledButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.white,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      iconColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    ),
                    label: const Text('Statistics',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    iconAlignment: IconAlignment.end,
                    icon: const Icon(Icons.arrow_right),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationsScreen()),
                      );
                    },
                    color: const Color(0xff006ef5),
                    icon: const Icon(Icons.notification_important_outlined),
                    padding: const EdgeInsets.all(5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nirdesh Gothania',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'B. Tech Student',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.book, color: Colors.blue.shade800),
              title: const Text('Courses'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.assignment, color: Colors.blue.shade800),
              title: const Text('Assignments'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.bar_chart, color: Colors.blue.shade800),
              title: const Text('Progress'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.pie_chart, color: Colors.blue.shade800),
              title: const Text('Reports'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article, color: Colors.blue.shade800),
              title: const Text('Blogs'),
              onTap: () {},
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help_outline, color: Colors.grey),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout Account'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xff006ef5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi user, Welcome Back!',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(height: 16),
                  // TextField(
                  // decoration: InputDecoration(
                  //   filled: true,
                  //   fillColor: Colors.white,
                  //   hintText: 'Search courses',
                  //   hintStyle:
                  //       const TextStyle(color: Colors.grey, fontSize: 16),
                  //   border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(12),
                  //     borderSide: BorderSide.none,
                  //   ),
                  //   prefixIcon: const Icon(Icons.search, color: Colors.black),
                  //   contentPadding: const EdgeInsets.symmetric(
                  //       vertical: 10, horizontal: 16),
                  // ),
                  // style: const TextStyle(fontSize: 16),
                  // ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        // Search Bar
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            focusNode: _searchFocusNode,
                            onTapOutside: (event) {
                              _searchFocusNode.unfocus();
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search courses',
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon:
                                  const Icon(Icons.search, color: Colors.black),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 16),
                            ),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),

                        // Suggested Courses
                        if (_showSuggestions)
                          Dialog.fullscreen(
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount:
                                  2, // Adjust the count as per requirement
                              itemBuilder: (context, index) {
                                return Card(
                                  // margin: const EdgeInsets.symmetric(
                                  //     vertical: 5, horizontal: 10),
                                  child: ListTile(
                                    // contentPadding: const EdgeInsets.all(5),

                                    dense: true,
                                    leading: const Icon(
                                      Icons.book,
                                      color: Colors.pink,
                                      size: 40,
                                    ),
                                    title: const Text(
                                      "HTML",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: FittedBox(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text("Beginner")),
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text("INR 1999")),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                              foregroundColor: Colors.white,
                                            ),
                                            child: const Text("Explore"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade900,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ready for a New Challenge?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Participate in this hackathon to solve Amazon's Warehouse Management!",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              // primary: Colors.white,
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              iconColor: Colors.white,
                            ),
                            label: const Text('Learn More',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            iconAlignment: IconAlignment.end,
                            icon: const Icon(Icons.arrow_right),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Continue Learning',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text(
                      'View All',
                      style: TextStyle(color: Colors.blue),
                    ),
                    icon: const Icon(
                      Icons.arrow_right,
                      color: Colors.blue,
                    ),
                    iconAlignment: IconAlignment.end,
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                // color: const Color(0xff2fa1a3),
                width: 320,
                height: 120,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xff2fa1a3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.book,
                          color: Colors.pink,
                          size: 40,
                        ),
                      ),
                      title: const Text(
                        'HTML',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text(
                        'Ch-4.3.1 / 08  |  12 Pages',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Text(
                        '53%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      // width: 250,
                      child: Slider(
                        value: 0.53,
                        onChanged: (value) {},
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 320,
                height: 120,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xff30b956),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.video_library,
                          color: Colors.blue.shade500,
                          size: 40,
                        ),
                      ),
                      title: const Text(
                        'Web Development',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text(
                        'Ch-4.3.1 / 08  |  2:26 mins',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: const Text(
                        '53%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      child: Slider(
                        value: 0.53,
                        onChanged: (value) {},
                        activeColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 320,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xff9176c7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'It takes just two minutes to',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Text(
                      'Level Up Your Skills!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue.shade700,
                        backgroundColor: Colors.white,
                      ),
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.blue.shade700,
                        size: 18,
                      ),
                      label: const Text('Take Flash Quiz'),
                      iconAlignment: IconAlignment.end,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set the active tab
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        iconSize: 18,
        unselectedFontSize: 11,
        selectedFontSize: 14,
        selectedIconTheme: const IconThemeData(size: 25),
        fixedColor: Colors.white,
        backgroundColor: const Color(0xff006ef5),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_rounded),
            label: "Professional",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: "Learning",
          ),
        ],
      ),
      // bottomSheet: const BottomSheetContent(),
    );
  }
}
