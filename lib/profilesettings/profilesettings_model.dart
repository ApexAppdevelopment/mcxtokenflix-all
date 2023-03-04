import '/auth/auth_util.dart';
import '/components/alt_nav2_widget.dart';
import '/components/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilesettingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for altNav_2 component.
  late AltNav2Model altNav2Model;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    altNav2Model = createModel(context, () => AltNav2Model());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    altNav2Model.dispose();
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
