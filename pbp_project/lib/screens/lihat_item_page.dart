import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbp_project/providers/shop_provider.dart';

class LihatItemPage extends StatelessWidget {
  const LihatItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shopProvider = Provider.of<ShopProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lihat Item'),
      ),
      body: shopProvider.items.isEmpty
          ? const Center(
              child: Text('Tidak ada item pada inventori'),
            )
          : ListView.builder(
              itemCount: shopProvider.items.length,
              itemBuilder: (context, index) {
                var item = shopProvider.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.description),
                      Text('Jumlah: ${item.amount}'),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
