import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onSelected;

  const CustomChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onSelected,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color:
                selected
                    ? Colors.grey[700]
                    : const Color.fromARGB(255, 41, 41, 41),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.transparent),
          ),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// FilterRow Widget
class FilterRow extends StatefulWidget {
  const FilterRow({super.key});

  @override
  FilterRowState createState() => FilterRowState();
}

class FilterRowState extends State<FilterRow> {
  int? selectedIndex;
  final List<String> options = [
    "優惠方案",
    "外送費",
    "不到 30 分鐘",
    "評價",
    "優惠方案",
    "外送費",
    "不到 30 分鐘",
    "評價",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomChip(
              label: options[index],
              selected: selectedIndex == index,
              onSelected: () {
                setState(() {
                  selectedIndex = selectedIndex == index ? null : index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Scaffold(body: Center(child: FilterRow()))));
}
