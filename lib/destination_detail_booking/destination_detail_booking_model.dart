import '/flutter_flow/flutter_flow_util.dart';
import 'destination_detail_booking_widget.dart'
    show DestinationDetailBookingWidget;
import 'package:flutter/material.dart';

class DestinationDetailBookingModel
    extends FlutterFlowModel<DestinationDetailBookingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
