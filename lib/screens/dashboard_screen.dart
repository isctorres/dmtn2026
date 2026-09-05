import 'package:dmsn/components/global_values.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Rubén Torres Frias'), 
              accountEmail: Text('ruben.torres@itcelaya.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/fondo.jpg')
                //NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            const ListTile(
              title: Text('Practica 1'),
              subtitle: Text('App de práctica'),
              leading: Icon(Icons.youtube_searched_for),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text('Cambiar tema'),
              subtitle: Text('Tema día / noche'),
              leading: Icon(Icons.light_mode),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                GlobalValues.banTheme.value = !GlobalValues.banTheme.value;
              },
            ),
             ListTile(
              title: Text('Cerrar sesión'),
              subtitle: Text('Salir'),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.chevron_right),
              onTap: () { 
                //Navigator.pop(context); 
                //Navigator.pop(context); 
                Navigator.pushReplacementNamed(context, '/');
                //Navigator.popUntil(context, ModalRoute.withName('/login'));
              },
            )
          ],
        ),
      ),
    );
  }
}