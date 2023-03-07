import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_model.dart';
export 'main_web_nav_model.dart';

class MainWebNavWidget extends StatefulWidget {
  const MainWebNavWidget({
    Key? key,
    this.navOne,
    this.navTwo,
    this.navThree,
    this.navFour,
    this.navFive,
    this.navSix,
  }) : super(key: key);

  final Color? navOne;
  final Color? navTwo;
  final Color? navThree;
  final Color? navFour;
  final Color? navFive;
  final Color? navSix;

  @override
  _MainWebNavWidgetState createState() => _MainWebNavWidgetState();
}

class _MainWebNavWidgetState extends State<MainWebNavWidget> {
  late MainWebNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
