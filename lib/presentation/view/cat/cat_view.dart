import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/cats/cat_bloc.dart';

class CatView extends StatelessWidget {
  const CatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  Widget buildScaffold() {
    return BlocProvider(
      create: (context) => CatBloc()..add(InitCats()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cats'),
        ),
        body: BlocBuilder<CatBloc, CatState>(
          builder: (context, state) {
            if (state is CatLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is CatError) {
              return Center(child: Icon(Icons.warning));
            }
            return ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('data'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
