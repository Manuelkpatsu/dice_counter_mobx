import 'dart:math';
import 'package:mobx/mobx.dart';

part 'dice_counter.g.dart';

class DiceCounter = _DiceCounter with _$DiceCounter;

abstract class _DiceCounter with Store {
  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  int right = Random().nextInt(6) + 1;

  @computed
  int get total => left + right;

  @action
  void roll() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }
}
