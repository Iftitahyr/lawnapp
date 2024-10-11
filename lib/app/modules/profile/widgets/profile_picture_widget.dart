import 'dart:io';

import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onImagePick;

  const ProfilePictureWidget({
    required this.imagePath,
    required this.onImagePick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onImagePick,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.grey[200],
        backgroundImage: imagePath.isEmpty
            ? AssetImage('assets/default_profile.png') // Placeholder image
            : FileImage(File(imagePath)) as ImageProvider,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
