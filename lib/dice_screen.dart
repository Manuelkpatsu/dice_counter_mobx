import 'package:dice_counter_mobx/dice_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DiceCounter diceCounter = DiceCounter();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tap the dice !!!'.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Hind',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('images/dice${diceCounter.left}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: Observer(
                      builder: (_) =>
                          Image.asset('images/dice${diceCounter.right}.png'),
                    ),
                    onPressed: diceCounter.roll,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) => Text(
                  'Total ${diceCounter.total}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 16,
                    fontFamily: 'Verdana',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
