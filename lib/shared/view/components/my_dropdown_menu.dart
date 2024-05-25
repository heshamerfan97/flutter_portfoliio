import 'package:flutter/material.dart';

import '../../../utils/logger.dart';
import '../helper/export.dart';

class HenkelDropdownMenu<T> extends StatefulWidget {
  const HenkelDropdownMenu({
    required this.items,
    required this.onChange,
    this.initialValue,
    Key? key,
    this.elevation,
    this.borderColor,
    this.backgroundColor,
    this.enabled = true,
    this.expanded = false,
    this.isDense = false,
    this.setInitialValue = true,
    this.hint,
  }) : super(key: key);
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;
  final void Function(dynamic) onChange;
  final Color? backgroundColor, borderColor;
  final double? elevation;
  final bool enabled, expanded, isDense, setInitialValue;
  final String? hint;

  @override
  State<HenkelDropdownMenu> createState() => _HenkelDropdownMenuState<T>();
}

class _HenkelDropdownMenuState<T> extends State<HenkelDropdownMenu> {
  T? selected;

  @override
  void initState() {
    super.initState();
    if(widget.setInitialValue) {
      selected = widget.initialValue ?? widget.items.first.value!;
      Logger.log(selected, tag: 'DropDown Initial Value');
    }
  }


  @override
  void didUpdateWidget(oldWidget) {
    if(oldWidget.initialValue != widget.initialValue){
      selected = widget.initialValue ?? widget.items.first.value!;
    }
    super.didUpdateWidget(oldWidget);
  }



  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation ?? 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: BorderSide(color: widget.borderColor ?? Palette.transparent)),
      color: widget.backgroundColor ?? Palette.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
        child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<T>(
                iconEnabledColor: Palette.primary,
          items: widget.items as List<DropdownMenuItem<T>>,
          isExpanded: widget.expanded,
          style: TextStyles.baseBlackText,
          onChanged: !widget.enabled
                ? null
                : (item) {
                    if (item != null) {
                      setState(() {
                        selected = item;
                      });
                      if(selected != null) {
                        (widget.onChange as void Function(T?))(selected);
                      }
                    }
                  },
          value: selected,
          borderRadius: BorderRadius.circular(16.0),
                isDense: widget.isDense,
                hint: widget.hint==null?null:Text(widget.hint!, style: TextStyles.hintStyle,),
        ),
            )),
      ),
    );
  }
}
