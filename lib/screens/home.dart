import 'package:flutter/material.dart';
import 'package:hymnef/screens/efik_page.dart';
import 'package:hymnef/screens/english_page.dart';
import 'package:hymnef/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;
final GlobalKey<ScaffoldState> scaffoldKey =GlobalKey();
  @override
  void initState() {

    super.initState();
    _tabController= TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      drawer: const DrawerClass(),
        key: scaffoldKey,
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 9,
              child: IconButton(onPressed: (){
               scaffoldKey.currentState!.openDrawer();
              },icon: const Icon(Icons.menu),),),
            Container(
            margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(height: 45,
                  child: Center(
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade400.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.orange,
                        labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        tabs:const [
                          Tab(text: 'English'),
                          Tab(text: 'Efik'),
                        ],
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const[
                        EnglishHymnPage(),
                        EfikHymnPage(),
      
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
