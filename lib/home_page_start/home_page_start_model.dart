import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_web_nav_widget.dart';
import '/components/message_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageStartModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    mainWebNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
