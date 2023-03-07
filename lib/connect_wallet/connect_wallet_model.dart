import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConnectWalletModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currency widget.
  String? currencyValue;
  // State field(s) for walletaddress widget.
  TextEditingController? walletaddressController;
  String? Function(BuildContext, String?)? walletaddressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    walletaddressController?.dispose();
  }

  /// Additional helper methods are added here.

}
