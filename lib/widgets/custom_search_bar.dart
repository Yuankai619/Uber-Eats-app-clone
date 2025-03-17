import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 22, 22, 22)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: '搜尋 Uber Eats',
          hintStyle: TextStyle(color: Colors.grey.shade500),
          filled: true,
          fillColor: Color.fromARGB(255, 41, 41, 41),
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
    );
  }
}
