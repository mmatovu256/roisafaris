import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _bookings = [];
  List<DocumentReference> get bookings => _bookings;
  set bookings(List<DocumentReference> value) {
    _bookings = value;
  }

  void addToBookings(DocumentReference value) {
    _bookings.add(value);
  }

  void removeFromBookings(DocumentReference value) {
    _bookings.remove(value);
  }

  void removeAtIndexFromBookings(int index) {
    _bookings.removeAt(index);
  }

  void updateBookingsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _bookings[index] = updateFn(_bookings[index]);
  }

  void insertAtIndexInBookings(int index, DocumentReference value) {
    _bookings.insert(index, value);
  }

  double _bookingSum = 0.0;
  double get bookingSum => _bookingSum;
  set bookingSum(double value) {
    _bookingSum = value;
  }
}
