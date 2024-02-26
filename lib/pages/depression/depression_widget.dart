import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'depression_model.dart';
export 'depression_model.dart';

class DepressionWidget extends StatefulWidget {
  const DepressionWidget({super.key});

  @override
  State<DepressionWidget> createState() => _DepressionWidgetState();
}

class _DepressionWidgetState extends State<DepressionWidget> {
  late DepressionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DepressionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF89ACE1),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Diagnosis');
            },
          ),
          title: Text(
            'Depression',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Merriweather',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 30.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 175.0, 0.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(null),
                        options: [
                          'Hopelessness',
                          'Grief',
                          'Lack of Interest',
                          'Anxiety',
                          'Irritability',
                          'Sleep Problems'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue = val),
                        width: 300.0,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Please select your symptom...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Builder(
                      builder: (context) {
                        if (_model.dropDownValue == 'Hopelessness') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_hopeful_music.mp3',
                              metas: Metas(
                                id: 'music_fx_hopeful_music.mp3-a9af9d4b',
                                title: 'Hopeful Music',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor: Color(0xFF89ACE1),
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else if (_model.dropDownValue == 'Grief') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_music_to_get_through_grief.mp3',
                              metas: Metas(
                                id: 'music_fx_music_to_get_through_grief.mp3-9fd1d570',
                                title: 'Music to help with Grief',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor: Color(0xFF89ACE1),
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else if (_model.dropDownValue == 'Lack of Interest') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_music_to_increase_interest.mp3',
                              metas: Metas(
                                id: 'music_fx_music_to_increase_interest.mp3-2e277696',
                                title: 'Music to make things more interesting',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor: Color(0xFF89ACE1),
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else if (_model.dropDownValue == 'Anxiety') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_soothing.mp3',
                              metas: Metas(
                                id: 'music_fx_soothing.mp3-8146967b',
                                title: 'Soothing Music',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor: Color(0xFF89ACE1),
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else if (_model.dropDownValue == 'Irritability') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_pleasing_music.mp3',
                              metas: Metas(
                                id: 'music_fx_pleasing_music.mp3-3d7443ed',
                                title: 'Music to help with Irritability',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else if (_model.dropDownValue == 'Sleep Problems') {
                          return FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/music_fx_sleep_music.mp3',
                              metas: Metas(
                                id: 'music_fx_sleep_music.mp3-b9063c6c',
                                title: 'Music to help sleep',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).titleLarge,
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            playbackButtonColor: Color(0xFF89ACE1),
                            activeTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            elevation: 4.0,
                            playInBackground: PlayInBackground.enabled,
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Text(
                              'Please select a symptom',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Merriweather',
                                  ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
