import 'package:flutter/material.dart';

void main() {
  runApp(const Coin());
}

class Coin extends StatefulWidget {
  const Coin({Key? Key}) : super(key: Key);

  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int copper = 0;
  int silver = 0;
  int gold = 0;

  void updateCoin() {
    setState(() {
      copper++;

      if (copper == 10) {
        silver++;
        copper = 0;
      }

      if (silver == 10) {
        gold++;
        silver = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GestureDetector(
            onTap: updateCoin,
            child: Container(
              color: Colors.blueAccent,
              padding: const EdgeInsets.only(top: 45),
              child: Column(
                children: [
                  //intem1
                  Center(
                    child: Text(
                      "Copper: $copper",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  //intem2
                  Center(
                    child: Text("Silver: $silver",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          decoration: TextDecoration.none,
                        )),
                  ),
                  //item3
                  Center(
                    child: Text(
                      "Gold: $gold",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            )));
  }

//udshuasdhusdah
}
