import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/message_bottom_sheet_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
