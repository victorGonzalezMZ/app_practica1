import 'package:app_practica1/widgets/card_list.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Car",
                style: TextStyle(
                  fontSize: 24.0
                ),
              ),
              background: Image(
                image: AssetImage('assets/img/car.jpg'),
                fit: BoxFit.fill,
              )
            ),
            pinned: true,
            expandedHeight: 250.0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 130.0,
                  child: CardListItem(),
                );
              },
              childCount: 20
            )
          )
        ],
      ),
    );
  }  
}