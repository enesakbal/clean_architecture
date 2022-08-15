import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  Widget buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Center(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    context.read<HomeBloc>().add(HomeToCounterExample());
                  },
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Counter Example',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeBloc>().add(HomeToCat());
                  },
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Cat Example',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
