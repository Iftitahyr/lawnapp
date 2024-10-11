import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import '../widgets/profile_picture_widget.dart';

class ProfileView extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Obx(() => ProfilePictureWidget(
                  imagePath: controller.profileImage.value.path,
                  onImagePick: controller.pickImage,
                ),
                ),
              ),
              SizedBox(height: 16),
              Obx(() => Text(
                controller.userName.value,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
              Obx(() => Text(
                controller.email.value,
                style: TextStyle(color: Colors.grey),
              )),
              Obx(() => Text(
                controller.phone.value,
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(height: 16),
              Divider(),
              ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text('Aktivitasku'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Pilihan Bahasa'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.local_offer),
                title: Text('Promo'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Pusat Bantuan'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Alamat'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 3,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
