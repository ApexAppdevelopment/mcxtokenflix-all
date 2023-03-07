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
import 'connect_wallet_model.dart';
export 'connect_wallet_model.dart';

class ConnectWalletWidget extends StatefulWidget {
  const ConnectWalletWidget({Key? key}) : super(key: key);

  @override
  _ConnectWalletWidgetState createState() => _ConnectWalletWidgetState();
}

class _ConnectWalletWidgetState extends State<ConnectWalletWidget> {
  late ConnectWalletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConnectWalletModel());

    _model.walletaddressController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? PreferredSize(
              preferredSize: Size.fromHeight(75.0),
              child: AppBar(
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Connect Crypto Wallet',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title2Family,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 22.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title2Family),
                                      ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('HomePage');
                              },
                              child: Text(
                                'Skip',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 0.0,
              ),
            )
          : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        await launchURL('https://metamask.io/');
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDBE2E7),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/metamask.gif',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 25.0),
                child: FlutterFlowDropDown<String>(
                  initialOption: _model.currencyValue ??= 'USDT',
                  options: ['USDT', 'BNB', 'BTC', 'ETHERIUM'],
                  onChanged: (val) =>
                      setState(() => _model.currencyValue = val),
                  width: double.infinity,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: FlutterFlowTheme.of(context).primaryText,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                  hintText: 'Select Currency...',
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                  borderWidth: 0.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 0.0),
                child: TextFormField(
                  controller: _model.walletaddressController,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.walletaddressController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Wallet Address',
                    hintText: 'Paste Wallet Address',
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: _model.walletaddressController!.text.isNotEmpty
                        ? InkWell(
                            onTap: () async {
                              _model.walletaddressController?.clear();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.clear,
                              color: Color(0xFF757575),
                              size: 22.0,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  validator: _model.walletaddressControllerValidator
                      .asValidator(context),
                ),
              ),
              if (_model.walletaddressController.text == '')
                Align(
                  alignment: AlignmentDirectional(0.0, 0.05),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          walletaddressadded:
                              _model.walletaddressController.text,
                          paymentwallet: _model.currencyValue,
                        );
                        await currentUserReference!.update(usersUpdateData);

                        context.pushNamed('HomePage');
                      },
                      text: 'Save Changes',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle1
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).subtitle1Family,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle1Family),
                            ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
