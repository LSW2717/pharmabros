import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmabros/common/const/color.dart';
import 'package:pharmabros/common/const/typography.dart';

class SearchTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String) onSubmitted;

  const SearchTextFormField({
    required this.controller,
    required this.onSubmitted,
    super.key,
  });

  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {
  late FocusNode focusNode;
  double borderRadius = 8.0;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: widget.controller,
      textAlignVertical: TextAlignVertical.center,
      onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
        suffixIcon: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 13.33.w,
          ),
          padding: EdgeInsets.zero,
        ),
        filled: true,
        fillColor: mainColor1,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: mainColor1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: mainColor1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: mainColor1),
        ),
      ),
      maxLines: 1,
    );
  }
}
