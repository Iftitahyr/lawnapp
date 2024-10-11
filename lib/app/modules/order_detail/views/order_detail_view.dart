import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/order_detail_controller.dart';

class OrderDetailView extends GetView<OrderDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Rincian Pesanan"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selesai", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(child: Icon(Icons.person)),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User_1945"),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.amber),
                        Text("5.0"),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.phone),
                SizedBox(width: 10),
                Icon(Icons.chat),
              ],
            ),
            Divider(thickness: 2),
            SizedBox(height: 10),
            Text("Pesanan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            // Order Items List
            buildOrderItem("Baju Kemeja", "10 pcs", "assets/images/baju_kemeja.png"),
            buildOrderItem("Celana Pendek", "8 pcs", "assets/images/celana_pendek.png"),
            buildOrderItem("Celana Panjang", "5 pcs", "assets/images/celana_panjang.png"),
            buildOrderItem("Gorden", "2 pcs", "assets/images/gorden.png"),
            buildOrderItem("Sepatu", "1 pcs", "assets/images/sepatu.png"),
            Divider(thickness: 2),
            buildTotalRow("Subtotal Pesanan (9.6 kg)", "Rp89.000"),
            Divider(thickness: 2),
            buildTotalRow("Voucher Diskon", "-Rp20.000"),
            buildTotalRow("Biaya Pengemasan", "Rp2.000"),
            buildTotalRow("No. Pesanan", "123124674564522"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFE3F2F1),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
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
      )
    );
      }

  Widget buildOrderItem(String name, String qty, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 30, height: 30),
          SizedBox(width: 10),
          Text("$qty $name"),
        ],
      ),
    );
  }

  Widget buildTotalRow(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(amount),
        ],
      ),
    );
  }
}
