part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: orangeColor,
        currentIndex: pageProvider.currentIndex,
        onTap: (value) {
          print(value);
          pageProvider.currentIndex = value;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      );
    }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return Home();
          break;
        case 1:
          return Profile();
          break;

        default:
          return Home();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
      bottomSheet: Container(
        width: double.infinity,
        height: 20,
        color: Colors.greenAccent,
        child: Center(
          child: Text('Connected server to respone to : 192.168.1.1'),
        ),
      ),
    );
  }
}
