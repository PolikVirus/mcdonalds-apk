import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final int quantity;

  const OrderItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.quantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Image.asset(
              imageUrl,
              height: 28,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            price,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 22,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 0.5, color: Colors.grey),
                ),
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    size: 10,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '$quantity',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 22,
                height: 16,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFCB3F),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}