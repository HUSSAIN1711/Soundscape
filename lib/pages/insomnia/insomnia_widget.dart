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
import 'insomnia_model.dart';
export 'insomnia_model.dart';

class InsomniaWidget extends StatefulWidget {
  const InsomniaWidget({super.key});

  @override
  State<InsomniaWidget> createState() => _InsomniaWidgetState();
}

class _InsomniaWidgetState extends State<InsomniaWidget> {
  late InsomniaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsomniaModel());

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
            'Insomnia',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 175.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        'Sleep Waves',
                        'White Noise',
                        'Tiredness',
                        'Cranky',
                        'Anxious',
                        'Short Attention Span',
                        'Music to Start your Day'
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
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          if (_model.dropDownValue == 'Sleep Waves') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_sleep_music.mp3',
                                metas: Metas(
                                  id: 'music_fx_sleep_music.mp3-cb67367e',
                                  title: 'Music to help Sleep',
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
                          } else if (_model.dropDownValue == 'White Noise') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_white_noise.mp3',
                                metas: Metas(
                                  id: 'music_fx_white_noise.mp3-a3df8cde',
                                  title: 'White Noise',
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
                          } else if (_model.dropDownValue == 'Tiredness') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_motivational_and_energetic_music.mp3',
                                metas: Metas(
                                  id: 'music_fx_motivational_and_energetic_music.mp3-35352edd',
                                  title: 'Music to help with tiredness',
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
                          } else if (_model.dropDownValue == 'Cranky') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_happy_and_uplifting_music.mp3',
                                metas: Metas(
                                  id: 'music_fx_happy_and_uplifting_music.mp3-e04fd1ce',
                                  title: 'Happy Music',
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
                          } else if (_model.dropDownValue == 'Anxious') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_soothing.mp3',
                                metas: Metas(
                                  id: 'music_fx_soothing.mp3-0b9fa221',
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
                          } else if (_model.dropDownValue ==
                              'Short Attention Span') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_concentrating_music.mp3',
                                metas: Metas(
                                  id: 'music_fx_concentrating_music.mp3-16d56989',
                                  title: 'Music to help Focus',
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
                          } else if (_model.dropDownValue ==
                              'Music to Start your Day') {
                            return FlutterFlowAudioPlayer(
                              audio: Audio(
                                'assets/audios/music_fx_music_to_listen_to_when_you_wake_up.mp3',
                                metas: Metas(
                                  id: 'music_fx_music_to_listen_to_when_you_wake_up.mp3-9bc89f2a',
                                  title: 'Start Off your day with Music',
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
                            return Text(
                              'Please select a symptom',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Merriweather',
                                  ),
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
    );
  }
}
