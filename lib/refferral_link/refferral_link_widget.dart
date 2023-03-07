import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'refferral_link_model.dart';
export 'refferral_link_model.dart';

class RefferralLinkWidget extends StatefulWidget {
  const RefferralLinkWidget({Key? key}) : super(key: key);

  @override
  _RefferralLinkWidgetState createState() => _RefferralLinkWidgetState();
}

class _RefferralLinkWidgetState extends State<RefferralLinkWidget> {
  late RefferralLinkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefferralLinkModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: InkWell(
                onTap: () async {
                  context.pop();
                },
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 40.0,
                ),
              ),
              title: Text(
                'Share your QR/Refferral Link',
                style: FlutterFlowTheme.of(context).title2,
              ),
              actions: [],
              centerTitle: false,
              toolbarHeight: 75.0,
              elevation: 0.0,
            )
          : null,
    );
  }
}
