part of 'widgets.dart';

class RateFoodPages extends StatefulWidget {
  final Food food;

  RateFoodPages({this.food});
  @override
  _RateFoodPagesState createState() => _RateFoodPagesState();
}

class _RateFoodPagesState extends State<RateFoodPages> {
  int _stars = 0;

  Widget _buildStart(int starCount) {
    return InkWell(
      child: Icon(
        Icons.star,
        color: _stars >= starCount ? Colors.orange : Colors.grey,
      ),
      onTap: () {
        setState(() {
          _stars = starCount;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(widget.food.picturePath),
                    fit: BoxFit.cover))),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.food.name,
                  style: blackFontStyle2,
                  maxLines: 1,
                  overflow: TextOverflow.clip),
              Row(
                // mainAxisAlignment: MainAx.isAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildStart(1),
                  _buildStart(2),
                  _buildStart(3),
                  _buildStart(4),
                  _buildStart(5)
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 70,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FlatButton(
                color: Colors.yellowAccent,
                onPressed: () {
                  Navigator.of(context).pop(_stars);
                },
                child: Text("OK")),
            Text(
              "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
              style: greyFontStyle,
            ),
          ],
        ),
      ],
    );
  }
}
