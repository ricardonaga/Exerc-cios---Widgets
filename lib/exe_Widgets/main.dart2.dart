import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget  {
  const MyApp({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Simples',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SimpleCalculater() ,
    );
  }
}

class SimpleCalculater extends StatefulWidget {
  const SimpleCalculater({super.key});

  @override
  State<SimpleCalculater> createState() => _SimpleCalculaterState();
}

class _SimpleCalculaterState extends State<SimpleCalculater> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
       body: Container( 
      color: theme.colorScheme.background,
      alignment: Alignment.center,
    child: Text('calculadora simples', style: theme.textTheme.bodyText2,),
       ),
       bottomNavigationBar: Container(
       height: 120.0,
       color: Colors.blue
       ),
    );
  }

}