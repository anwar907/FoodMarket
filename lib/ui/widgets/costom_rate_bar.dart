part of 'widgets.dart';

class CostomRate extends StatefulWidget {
  @override
  _CostomRateState createState() => _CostomRateState();
}

class _CostomRateState extends State<CostomRate>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  TabController _tabController;

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
                  Center(
                    child: Text(
                      'Place Bid',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
