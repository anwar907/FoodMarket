part of 'pages.dart';

class RateFoodPages extends StatefulWidget {
  @override
  _RateFoodPagesState createState() => _RateFoodPagesState();
}

class _RateFoodPagesState extends State<RateFoodPages>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // final Transaction transaction;
  final double itemWidth;
  final Food mockFood;

  _RateFoodPagesState({this.mockFood, this.itemWidth});

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50, left: 8, right: 8),
      child: Column(
        children: [
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: Colors.yellow,
              indicatorColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              tabs: [
                Icon(
                  Icons.star,
                  size: 18,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                star1(context),
                star2(context),
                star3(context),
                star4(context),
                star5(context),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
