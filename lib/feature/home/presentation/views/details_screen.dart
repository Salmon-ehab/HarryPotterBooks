import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:harrypoterbooks/core/asset/colors.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';
import 'package:harrypoterbooks/feature/home/presentation/views/widgets/details_widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.bookModel4});
  final BookModel bookModel4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      appBar: AppBar(
        backgroundColor: AppColor.blueColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: InkWell(
          onTap: (){
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.yellow,
            size: 24.sp,
          ),
        ),
      ),
      body: DetailsBody(
        bookModel3: bookModel4,
      ),
    );
  }
}
