import 'package:awesome_page_transitions/awesome_page_transitions.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../sign_in/sign_in_widget.dart';
import '../sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPageWidget extends StatefulWidget {
  StartPageWidget({Key key}) : super(key: key);

  @override
  _StartPageWidgetState createState() => _StartPageWidgetState();
}

class _StartPageWidgetState extends State<StartPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFF000022),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/DROOT Revisited-01.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.scaleDown,
                ),
                Text(
                  'Let\'s Get\nStarted...',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          AwesomePageRoute(
                            transitionDuration: Duration(milliseconds: 600),
                            exitPage: widget,
                            enterPage: SignUpWidget(),
                            transition: ParallaxTransition(),
                          ),
                        );
                      },
                      text: 'New user? Sign Up',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFF40000),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 5,
                      ),
                    ),
                    Divider(),
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          AwesomePageRoute(
                            transitionDuration: Duration(milliseconds: 600),
                            exitPage: widget,
                            enterPage: SignInWidget(),
                            transition: ParallaxTransition(),
                          ),
                        );
                      },
                      text: 'Already a user? Sign In',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFF40000),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 5,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
