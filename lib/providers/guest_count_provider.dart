import 'package:flutter/material.dart';

class GuestCounterProvider with ChangeNotifier {
  int guestCounter = 0;

  changeGuestCount(int value) {
    if (value < 0 && guestCounter > 0) {
      guestCounter += value;
      notifyListeners();
    }

    if (value >= 0) {
      guestCounter += value;
      notifyListeners();
    }
  }
}
