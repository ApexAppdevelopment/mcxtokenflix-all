import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              context.pop();
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 32.0,
            ),
          ),
          title: Text(
            'Refferral Link',
            style: FlutterFlowTheme.of(context).title2,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthUserStreamWidget(
                    builder: (context) => ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          valueOrDefault(currentUserDocument?.qrcode, ''),
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/responsive-e25eer/assets/uann1bt4twdk/qr.png',
                        ),
                        width: MediaQuery.of(context).size.width * 0.672,
                        height: 261.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
                      child: Text(
                        'Copy to clipboard',
                        style: FlutterFlowTheme.of(context).title2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 12.0, 40.0, 0.0),
              child: InkWell(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(
                      text: valueOrDefault(currentUserDocument?.reflink, '')));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          onTap: () async {
                            await Clipboard.setData(ClipboardData(
                                text:
                                    'https://responsive-e25eer.flutterflow.app/'));
                          },
                          child: Text(
                            valueOrDefault(currentUserDocument?.reflink, ''),
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Clipboard.setData(ClipboardData(
                            text: valueOrDefault(
                                currentUserDocument?.reflink, '')));
                      },
                      child: Icon(
                        Icons.file_copy,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 24.0),
              child: FFButtonWidget(
                onPressed: () async {
                  final usersUpdateData = createUsersRecordData(
                    reflink: valueOrDefault<String>(
                      'https://responsive-e25eer.flutterflow.app?${valueOrDefault(currentUserDocument?.refferralID, '')}',
                      'refCode',
                    ),
                  );
                  await currentUserReference!.update(usersUpdateData);
                },
                text: 'Create Refferral Link',
                options: FFButtonOptions(
                  width: 300.0,
                  height: 51.1,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: FlutterFlowTheme.of(context).title3Family,
                        color: Colors.white,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).title3Family),
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
