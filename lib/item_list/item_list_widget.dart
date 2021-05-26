import 'package:awesome_page_transitions/awesome_page_transitions.dart';
import 'package:droot/auth/auth_util.dart';
import 'package:droot/flutter_flow/flutter_flow_toggle_icon.dart';

import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../new_item/new_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemListWidget extends StatefulWidget {
  ItemListWidget({Key key}) : super(key: key);

  @override
  _ItemListWidgetState createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TriprecordRecord>>(
      stream: queryTriprecordRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<TriprecordRecord> itemListTriprecordRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          // return Container();
          // For now, we'll just include some dummy data.
          itemListTriprecordRecordList = createDummyTriprecordRecord(count: 1);
        }
        final itemListTriprecordRecord = itemListTriprecordRecordList.first;
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
                  enterPage: NewItemWidget(),
                  transition: StackTransition(),
                ),
              );
            },
            backgroundColor: FlutterFlowTheme.secondaryColor,
            elevation: 8,
            child: IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  AwesomePageRoute(
                    transitionDuration: Duration(milliseconds: 600),
                    exitPage: widget,
                    enterPage: NewItemWidget(),
                    transition: StackTransition(),
                  ),
                );
              },
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.tertiaryColor,
                size: 30,
              ),
              iconSize: 30,
            ),
          ),
          body: SafeArea(
            child: StreamBuilder<List<ItemlistRecord>>(
              stream: queryItemlistRecord(
                queryBuilder: (itemlistRecord) => itemlistRecord
                    .where('userreference', isEqualTo: currentUserReference),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                List<ItemlistRecord> listViewItemlistRecordList = snapshot.data;
                // Customize what your widget looks like with no query results.
                if (listViewItemlistRecordList.isEmpty) {
                  return Center(
                    child: Image.asset(
                      'assets/images/no-item-found.png',
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                  );
                }
                return Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewItemlistRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewItemlistRecord =
                          listViewItemlistRecordList[listViewIndex];
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              listViewItemlistRecord.itemname,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                await listViewItemlistRecord.reference.delete();
                              },
                              icon: Icon(
                                Icons.delete,
                                color: FlutterFlowTheme.primaryColor,
                                size: 30,
                              ),
                              iconSize: 30,
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                final packedinbag =
                                    !listViewItemlistRecord.packedinbag;

                                final itemlistRecordData =
                                    createItemlistRecordData(
                                  packedinbag: packedinbag,
                                );

                                await listViewItemlistRecord.reference
                                    .update(itemlistRecordData);
                              },
                              value: listViewItemlistRecord.packedinbag,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.secondaryColor,
                                size: 25,
                              ),
                              offIcon: Icon(
                                Icons.check_box_outline_blank,
                                color: FlutterFlowTheme.primaryColor,
                                size: 25,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
