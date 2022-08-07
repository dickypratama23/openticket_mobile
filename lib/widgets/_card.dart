import 'package:flutter/material.dart';
import 'package:openticket_mobile/Models/tiket.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.itemIndex,
    required this.tiket,
    required this.press
  });

  final int itemIndex;
  final Tiket tiket;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: tiket.tiketColor,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 27,
                      color: Colors.black12),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Color(0xffEBD5D5), borderRadius: BorderRadius.circular(22)),
              ),
            ),
            Positioned(
              right: 20,
              top: 50,
              child: SizedBox(
                height: 80,
                width: 80,
                child: Icon(tiket.tiketIcon, size: 80, color: tiket.tiketColor),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "${tiket.tiketCount}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration:  BoxDecoration(
                        color: tiket.tiketColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        )
                      ),
                      child: Text(
                        tiket.tiketType,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 4/10
                        ),
                      ),
                    )
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
