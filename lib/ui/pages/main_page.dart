import 'package:flutter/material.dart';
import 'package:my_finances/ui/pages/home_page.dart';

enum CurrentPage { home }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late CurrentPage _currentPage;

  @override
  void initState() {
    super.initState();

    _currentPage = CurrentPage.home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finances'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (_currentPage) {
      case CurrentPage.home:
        return HomePage();
    }
  }
}
