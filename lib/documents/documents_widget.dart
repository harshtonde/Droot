import 'package:awesome_page_transitions/awesome_page_transitions.dart';
import 'package:photo_view/photo_view.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../new_document_page/new_document_page_widget.dart';
import '../profile/profile_widget.dart';
import '../start_page/start_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsWidget extends StatefulWidget {
  DocumentsWidget({Key key}) : super(key: key);

  @override
  _DocumentsWidgetState createState() => _DocumentsWidgetState();
}

class _DocumentsWidgetState extends State<DocumentsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<DocumentrecordRecord>>(
      stream: queryDocumentrecordRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<DocumentrecordRecord> documentsDocumentrecordRecordList =
            snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          // return Container();
          // For now, we'll just include some dummy data.
          documentsDocumentrecordRecordList =
              createDummyDocumentrecordRecord(count: 1);
        }
        final documentsDocumentrecordRecord =
            documentsDocumentrecordRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.primaryColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                context,
                AwesomePageRoute(
                  transitionDuration: Duration(milliseconds: 600),
                  exitPage: widget,
                  enterPage: NewDocumentPageWidget(),
                  transition: StackTransition(),
                ),
              );
            },
            backgroundColor: FlutterFlowTheme.secondaryColor,
            elevation: 8,
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  AwesomePageRoute(
                    transitionDuration: Duration(milliseconds: 600),
                    exitPage: widget,
                    enterPage: NewDocumentPageWidget(),
                    transition: StackTransition(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.tertiaryColor,
                size: 24,
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: StreamBuilder<List<DocumentrecordRecord>>(
                      stream: queryDocumentrecordRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(child: CircularProgressIndicator());
                        }
                        List<DocumentrecordRecord>
                            listViewDocumentrecordRecordList = snapshot.data;
                        // Customize what your widget looks like with no query results.
                        if (listViewDocumentrecordRecordList.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/no-document-found.png',
                            ),
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewDocumentrecordRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewDocumentrecordRecord =
                                listViewDocumentrecordRecordList[listViewIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Stack(
                                alignment:
                                    Alignment(-0.09999999999999998, 0.95),
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (_) {
                                                  return DetailScreen();
                                                }));
                                              },
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    listViewDocumentrecordRecord
                                                        .imageDoc,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                            // CachedNetworkImage(
                                            //   imageUrl:
                                            //       listViewDocumentrecordRecord
                                            //           .imageDoc,
                                            //   width: MediaQuery.of(context)
                                            //       .size
                                            //       .width,
                                            //   height: MediaQuery.of(context)
                                            //           .size
                                            //           .height *
                                            //       0.5,
                                            //   fit: BoxFit.cover,
                                            // )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 15, 15, 25),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Document',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 8, 0, 0),
                                                    child: Text(
                                                      'Type:',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            5, 8, 0, 0),
                                                    child: Text(
                                                      listViewDocumentrecordRecord
                                                          .documentType,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 8, 0, 0),
                                                    child: Text(
                                                      'Description:',
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            5, 8, 0, 0),
                                                    child: Text(
                                                      listViewDocumentrecordRecord
                                                          .description,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              10, 0, 10, 10),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await listViewDocumentrecordRecord
                                                  .reference
                                                  .delete();
                                            },
                                            text: 'Delete Document',
                                            icon: Icon(
                                              Icons.delete,
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 40,
                                              color: FlutterFlowTheme
                                                  .secondaryColor,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: StreamBuilder<List<DocumentrecordRecord>>(
              stream: queryDocumentrecordRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                List<DocumentrecordRecord> listViewDocumentrecordRecordList =
                    snapshot.data;
                // Customize what your widget looks like with no query results.
                if (listViewDocumentrecordRecordList.isEmpty) {
                  return Center(
                    child: Image.asset(
                      'assets/images/no-document-found.png',
                    ),
                  );
                }
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewDocumentrecordRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewDocumentrecordRecord =
                        listViewDocumentrecordRecordList[listViewIndex];
                    return CachedNetworkImage(
                      imageUrl: listViewDocumentrecordRecord.imageDoc,
                    );
                  },
                );
              },
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
