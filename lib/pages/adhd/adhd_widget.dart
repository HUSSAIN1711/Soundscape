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
import 'adhd_model.dart';
export 'adhd_model.dart';

class AdhdWidget extends StatefulWidget {
  const AdhdWidget({super.key});

  @override
  State<AdhdWidget> createState() => _AdhdWidgetState();
}

class _AdhdWidgetState extends State<AdhdWidget> {
  late AdhdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdhdModel());

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
            'ADHD ',
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              'Anxiety',
                              'Restlessness',
                              'Difficulty Focusing',
                              'Aggression',
                              'Irritability',
                              'Fidgety',
                              'Impulsive Behavior',
                              'Boredom'
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
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              if (_model.dropDownValue == 'Anxiety') {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/music_fx_soothing.mp3',
                                      metas: Metas(
                                        id: 'music_fx_soothing.mp3-ee8e9613',
                                        title: 'Soothing Music',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Merriweather',
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: Color(0xFF89AEC1),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 4.0,
                                    playInBackground: PlayInBackground
                                        .disabledRestoreOnForeground,
                                  ),
                                );
                              } else if (_model.dropDownValue ==
                                  'Restlessness') {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/music_fx_calm.mp3',
                                      metas: Metas(
                                        id: 'music_fx_calm.mp3-8707619f',
                                        title: 'Calming Music',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Merriweather',
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor: Color(0xFF89AEC1),
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 4.0,
                                    playInBackground: PlayInBackground
                                        .disabledRestoreOnForeground,
                                  ),
                                );
                              } else if (_model.dropDownValue ==
                                  'Difficulty Focusing') {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: FlutterFlowAudioPlayer(
                                    audio: Audio(
                                      'assets/audios/music_fx_focus.mp3',
                                      metas: Metas(
                                        id: 'music_fx_focus.mp3-948dd4d2',
                                        title: 'Music to help Focus',
                                      ),
                                    ),
                                    titleTextStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Merriweather',
                                        ),
                                    playbackDurationTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                            ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    playbackButtonColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    elevation: 4.0,
                                    playInBackground: PlayInBackground
                                        .disabledRestoreOnForeground,
                                  ),
                                );
                              } else if (_model.dropDownValue == 'Aggression') {
                                return FlutterFlowAudioPlayer(
                                  audio: Audio(
                                    'assets/audios/music_fx_music_to_help_with_aggression.mp3',
                                    metas: Metas(
                                      id: 'music_fx_music_to_help_with_aggression.mp3-7ec0572b',
                                      title: 'Music to help with aggression',
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
                                  playInBackground: PlayInBackground
                                      .disabledRestoreOnForeground,
                                );
                              } else if (_model.dropDownValue ==
                                  'Irritability') {
                                return FlutterFlowAudioPlayer(
                                  audio: Audio(
                                    'assets/audios/music_fx_pleasing_music.mp3',
                                    metas: Metas(
                                      id: 'music_fx_pleasing_music.mp3-bc534bb3',
                                      title: 'Pleasing Music',
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
                                  playInBackground: PlayInBackground
                                      .disabledRestoreOnForeground,
                                );
                              } else if (_model.dropDownValue == 'Fidgety') {
                                return FlutterFlowAudioPlayer(
                                  audio: Audio(
                                    'assets/audios/music_fx_still_music.mp3',
                                    metas: Metas(
                                      id: 'music_fx_still_music.mp3-684b85bd',
                                      title: 'Music to help with fidgeting',
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
                                  playInBackground: PlayInBackground
                                      .disabledRestoreOnForeground,
                                );
                              } else if (_model.dropDownValue ==
                                  'Impulsive Behavior') {
                                return FlutterFlowAudioPlayer(
                                  audio: Audio(
                                    'assets/audios/music_fx_music_to_increase_interest.mp3',
                                    metas: Metas(
                                      id: 'music_fx_music_to_increase_interest.mp3-d6cb766d',
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
                                  playInBackground: PlayInBackground
                                      .disabledRestoreOnForeground,
                                );
                              } else if (_model.dropDownValue == 'Boredom') {
                                return FlutterFlowAudioPlayer(
                                  audio: Audio(
                                    'assets/audios/music_fx_motivational_and_energetic_music.mp3',
                                    metas: Metas(
                                      id: 'music_fx_motivational_and_energetic_music.mp3-1b4787b4',
                                      title: 'Music to help with Boredom',
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
                                  playInBackground: PlayInBackground
                                      .disabledRestoreOnForeground,
                                );
                              } else {
                                return Text(
                                  'Please select your symptom from the dropdown',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
