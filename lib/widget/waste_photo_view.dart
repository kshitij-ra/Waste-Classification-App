import 'dart:io';
import 'package:flutter/material.dart';

import '../styles.dart';

class WastePhotoView extends StatelessWidget {
  final File? file;
  const WastePhotoView({super.key, this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 250,
      //color: Colors.blueGrey,
      child: (file == null)
          ? _buildEmptyView()
          : Image.file(file!, fit: BoxFit.cover),
    );
  }

  Widget _buildEmptyView() {
    return const Center(
        child: Text(
      'Please pick a photo',
      style: kAnalyzingTextStyle,
    ));
  }
}
