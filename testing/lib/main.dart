import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Popup Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showMessage = false;
  bool _showImage = false;

  void _toggleMessagePopup() {
    setState(() {
      _showMessage = !_showMessage;
    });
  }

  void _toggleImagePopup() {
    setState(() {
      _showImage = !_showImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // App background color
      appBar: AppBar(
        title: const Text('Flutter Popup Example'),
        backgroundColor: Colors.teal, // AppBar color
      ),
      body: Column(
        children: [
          // Top half of the screen
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: _toggleMessagePopup,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Button color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Show Message',
                      style: TextStyle(
                        color: Colors.white, // Change text color here
                      ),
                    ),
                  ),
                ),
                // Show message popup if _showMessage is true
                if (_showMessage)
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Automation Testing',
                            style: TextStyle(fontSize: 20, color: Colors.teal),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _toggleMessagePopup,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal, // Button color
                            ),
                            child: const Text(
                              'Close Message',
                              style: TextStyle(
                                color: Colors.white, // Change text color here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // Bottom half of the screen
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: _toggleImagePopup,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Button color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Show Image',
                      style: TextStyle(
                        color: Colors.white, // Change text color here
                      ),
                    ),
                  ),
                ),
                // Show image popup if _showImage is true
                if (_showImage)
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/image.jpg',
                              width: 200, height: 200),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _toggleImagePopup,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal, // Button color
                            ),
                            child: const Text(
                              'Close Image',
                              style: TextStyle(
                                color: Colors.white, // Change text color here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
