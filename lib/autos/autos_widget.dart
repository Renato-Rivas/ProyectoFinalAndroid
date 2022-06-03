import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../perfil/perfil_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AutosWidget extends StatefulWidget {
  const AutosWidget({Key key}) : super(key: key);

  @override
  _AutosWidgetState createState() => _AutosWidgetState();
}

class _AutosWidgetState extends State<AutosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF161616),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/logo.png',
              ),
            ),
            Text(
              'Morax',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'PT Serif',
                    color: Colors.white,
                    fontSize: 24,
                  ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.settings_outlined,
            color: Color(0xFF161616),
            size: 60,
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFF1A1F24),
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF252424),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/invitado.jpg',
                  ),
                ),
                Text(
                  'Invitado',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Text(
                    'invitado@example.com',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Perfil',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.topToBottom,
                                  duration: Duration(milliseconds: 200),
                                  reverseDuration: Duration(milliseconds: 200),
                                  child: PerfilWidget(),
                                ),
                              );
                            },
                            child: Text(
                              'Configurar perfil',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xB0000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/cerrarsesion.gif',
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.topToBottom,
                                duration: Duration(milliseconds: 200),
                                reverseDuration: Duration(milliseconds: 200),
                                child: HomePageWidget(),
                              ),
                            );
                          },
                          text: 'Cerrar sesión',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Colors.black,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: 12,
                          ),
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto1.jpeg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Keq-510',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '2',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '8',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '10',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto6.jpg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Nanhak-200',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '9',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '7',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '12',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto3.jpg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Konakona Bacla',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '9',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '2',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '9',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto2.jpg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Eula Mondo',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '1',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '6',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '8',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto5.jpg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Ahe-561',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '4',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '9',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '7',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1D1D),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://raw.githubusercontent.com/Renato-Rivas/Morax_6toJ/master/assets/images/auto4.jpg',
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Izumi Spear',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '11',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FaIcon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Color(0xFF80AFF5),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '9',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFC23D3D),
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Text(
                              '8',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.star_sharp,
                            color: Color(0xFFFFF969),
                            size: 20,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Algo ocurrió!'),
                                content: Text(
                                    'Esta función está temporalmente deshabilitada.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Aceptar.'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Ver',
                        options: FFButtonOptions(
                          width: 130,
                          height: 20,
                          color: Color(0xFF282828),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w200,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: 12,
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
    );
  }
}
