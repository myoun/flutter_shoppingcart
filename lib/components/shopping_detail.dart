import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailNameAndPrice(),
                _buildDetailRatingAndReviewCount(),
                _buildDetailColorOptions(),
                _buildDetailButton(context),
              ],
            )));
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          children: const [
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.star, color: Colors.yellow),
            Spacer(),
            Text("review"),
            Text("(26)", style: TextStyle(color: Colors.blue))
          ],
        ));
  }

  Widget _buildDetailColorOptions() {
    return SizedBox();
  }

  Widget _buildDetailIcon(Color mColo) {
    return SizedBox();
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
          onPressed: () {
            showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                        title: Text("장바구니에 담으시겠습니까?"),
                        actions: [
                          CupertinoDialogAction(
                              child: Text("확인"),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ]));
          },
          style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text("Add to Cart", style: TextStyle(color: Colors.white))),
    );
  }
}
