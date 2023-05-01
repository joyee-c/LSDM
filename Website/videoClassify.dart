import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'video_upload_classify_model.dart';
export 'video_upload_classify_model.dart';

class VideoUploadClassifyWidget extends StatefulWidget {
  const VideoUploadClassifyWidget({Key? key}) : super(key: key);

  @override
  _VideoUploadClassifyWidgetState createState() =>
      _VideoUploadClassifyWidgetState();
}

class _VideoUploadClassifyWidgetState extends State<VideoUploadClassifyWidget> {
  late VideoUploadClassifyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoUploadClassifyModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.25, 0),
            child: Text(
              'TidyMe',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Lora',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('HomePage');
              },
            ),
          ],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional(0.15, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Video Classify ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lora',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 290,
                  height: 250,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: TextFormField(
                          controller: _model.textController1,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'File Name',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).accent1,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController2,
                        onFieldSubmitted: (_) async {
                          setState(() {});
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'File URL',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).accent1,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ],
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    _model.authToken = await GetAuthTokenCall.call();
                    _model.apiResultio = await VideoClassifyCall.call(
                      url: _model.textController2.text,
                      authToken: getJsonField(
                        (_model.authToken?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString(),
                    );
                    await Future.delayed(const Duration(milliseconds: 1000));
                    _model.videoclass = await GetVideoClassStatusCall.call(
                      proj: getJsonField(
                        (_model.apiResultio?.jsonBody ?? ''),
                        r'''$.name''',
                      ).toString(),
                      authToken: getJsonField(
                        (_model.authToken?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString(),
                    );
                    if ((_model.videoclass?.succeeded ?? true)) {
                      setState(() {
                        _model.textController2?.text = getJsonField(
                          (_model.videoclass?.jsonBody ?? ''),
                          r'''$.response.annotationResults.segmentLabelAnnotations[0].segmentLabelAnnotations[0].categoryEntities.description''',
                        ).toString();
                      });
                    } else {
                      setState(() {
                        _model.textController2?.text = 'Not Classified';
                      });
                    }

                    setState(() {});
                  },
                  text: 'Classify',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Container(
                  width: 280,
                  child: TextFormField(
                    controller: _model.textController3,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textController3Validator.asValidator(context),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Add File',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
