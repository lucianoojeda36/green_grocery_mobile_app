import 'package:flutter/material.dart';

class ChipList extends StatefulWidget {
  const ChipList({Key? key}) : super(key: key);

  @override
  State<ChipList> createState() => _ChipListState();
}

class _ChipListState extends State<ChipList> {
  var _isSelected;

  final List<String> _chipNames = [
    'Todos',
    'Temporada',
    'Frutas',
    'Verduras',
    'pepe',
    'barbie',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                  label: Text(_chipNames[0]),
                  selected: _isSelected == 0 && true,
                  backgroundColor: _isSelected == 0 ? Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 0;
                    });
                  },
                  selectedColor:_isSelected == 0 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  label: Text(_chipNames[1]),
                  selected: _isSelected == 1 && true,
                  backgroundColor: _isSelected == 1 ? Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 1;
                    });
                  },
                       selectedColor:_isSelected == 1 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  label: Text(_chipNames[2]),
                  selected: _isSelected == 2 && true,
                  backgroundColor: _isSelected == 2 ?  Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 2;
                    });
                  },
                      selectedColor:_isSelected == 2 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  label: Text(_chipNames[3]),
                  selected: _isSelected == 3 && true,
                  backgroundColor: _isSelected == 3 ? Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 3;
                    });
                  },
                       selectedColor:_isSelected == 3 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  label: Text(_chipNames[4]),
                  selected: _isSelected == 4 && true,
                  backgroundColor: _isSelected == 4 ? Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 4;
                    });
                  },
                       selectedColor:_isSelected == 4 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: FilterChip(
                  label: Text(_chipNames[5]),
                  selected: _isSelected == 5 && true,
                  backgroundColor:_isSelected == 5 ? Colors.teal[600] : Colors.transparent,
                  onSelected: (bool value) {
                    setState(() {
                      _isSelected = 5;
                    });
                  },
                       selectedColor:_isSelected == 5 ? Colors.teal[600] : Colors.transparent,
                ),
              ),
            ],
          ),
        ));
  }
}
