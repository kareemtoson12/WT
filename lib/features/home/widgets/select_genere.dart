import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/styles/customs_color.dart';
import 'package:whispertales/core/styles/styles.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  String? _selectedCategory = 'Fantasy'; // Initial selected value
  final List<String> _categories = ['Fantasy', 'Science Fiction', 'Mystery'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.dg),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Select a Genre:',
                style: AppTextStyles.font20GoogleFont,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          DropdownButtonFormField<String>(
            style: AppTextStyles
                .font20GoogleFontEWhite, // Selected text color (white)
            value: _selectedCategory,
            decoration: const InputDecoration(
              labelText: '',
              border: OutlineInputBorder(),
              filled: true, // Fill the background color if needed
              fillColor: CustomsColros
                  .secondColor, // Example: Setting black background
            ),
            onChanged: (String? newValue) {
              setState(() {
                _selectedCategory = newValue;
              });
            },
            items: _categories.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(color: CustomsColros.primaryColor),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
