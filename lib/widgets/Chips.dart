import 'package:flutter/material.dart';
import 'package:lab3/models/ChipModel.dart';

class Chips extends StatefulWidget {
  Chips({super.key, required this.items});

  List<ChipModel> items;

  @override
  State<StatefulWidget> createState() {
    return _ChipState();
  }
}

class _ChipState extends State<Chips> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: [
          for (int index = 0; index < widget.items.length; index++)
            FilterChip(
                label: Text(widget.items[index].title),
                selected: widget.items[index].selected,
                onSelected: (bool _selected) {
                  setState(() {
                    widget.items[index].selected = _selected;
                  });
                }),
        ],
      ),
    );
  }
}

class ChipModel {
  ChipModel({
    required this.title,
    required this.selected,
  });

  String title;
  bool selected;
}
