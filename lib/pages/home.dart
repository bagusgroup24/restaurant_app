part of 'pages.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget nav() => PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 80,
                  ),
                  Spacer(),
                  Icon(
                    Icons.message,
                    color: orangeColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.notifications,
                    color: orangeColor,
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              labelColor: orangeColor,
              indicatorColor: orangeColor,
              unselectedLabelColor: blackColor,
              tabs: [
                Text('All'),
                Text('Recevied'),
                Text('Preparing'),
                Text('Ready'),
                Text('On The Way'),
              ],
            ),
          ),
        );

    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: nav(),
          body: TabBarView(
            children: [
              AllPage(),
              AllPage(),
              AllPage(),
              AllPage(),
              AllPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order ID #24',
            style: textOrange.copyWith(
              fontWeight: bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.date_range,
                color: greyColor,
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  '2021-10-26',
                  style: textGrey.copyWith(),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Cash on Delivery',
                  style: textWhite.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Customer Name : ',
                style: textGrey.copyWith(),
              ),
              Expanded(
                child: Text(
                  'amit kumar',
                  style: textOrange.copyWith(
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_history,
                color: greyColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Curbside Pickup',
                style: textGrey.copyWith(),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '\$500',
                  style: textOrange.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),
                  child: Text(
                    'Accepted',
                    style: textBlack.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/accepted-page');
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 80,
                height: 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  child: Text(
                    'Rejected',
                    style: textBlack.copyWith(
                      fontSize: 10,
                      fontWeight: bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Recevied',
                  style: textBlack.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Colors.purpleAccent,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.all(defaultMargin),
      children: [
        content(),
        content(),
        content(),
      ],
    );
  }
}

class AcceptedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
