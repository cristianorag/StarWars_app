// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:star_wars/model/favorite_model.dart';
// ignore: unused_import
import 'package:star_wars/util/types.dart';

// ignore: must_be_immutable
class FavoratiesListView extends StatelessWidget {
  List<FavoriteModel>? _data;

  FavoratiesListView(this._data);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        itemCount: _data?.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: _data![index].type == FavoriteModel.typeFilm
                        ? Colors.red
                        : Colors.green)),
            child: ListTile(
              title: Center(
                child: Text(
                  _data![index].name,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        });
  }
}
