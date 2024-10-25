

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.character, {super.key});

  final Character character;

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [

          // available points
          Container(
            color: Appcolors.secondaryColor,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(Icons.circle,
                  color: widget.character.points > 0 ? Colors.yellow : Colors.grey,
                ),
                const SizedBox(width: 20),
                const StyledText('Stat points available:'),
                const Expanded(child: SizedBox()),
                Styledheading(widget.character.points.toString())
              ],
            )
          ),

          // stats table
Table(
            children: widget.character. listedstats.map((stat) {
              return TableRow(
                decoration: BoxDecoration(color: Appcolors.secondaryColor.withOpacity(0.5)),
                children: [
  
                  // stat title (e.g. health)
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Styledheading(stat['title']!),
                    ),
                  ),

                  // stat value
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Styledheading(stat['value']!),
                    ),
                  ),

                  // icon to increase stat
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: IconButton(
                      icon: Icon(Icons.arrow_upward, color: Appcolors.textColor),
                      onPressed: () {
                        setState(() {
                          widget.character.increaseStats(stat['title']!);
                        });
                      },
                    ),
                  ),

                  // icon to decrease stat
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: GestureDetector(
                      child: Icon(Icons.arrow_downward, color: Appcolors.textColor),
                      onTap: () {
                        setState(() {
                          widget.character.decreaseStats(stat['title']!);
                        });
                      },
                    ),
                  ),

                ]
              );
            }).toList()
          ),

        ],
      ),
    );
  }
}
      