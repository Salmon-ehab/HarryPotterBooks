import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harrypoterbooks/core/asset/colors.dart';
import 'package:harrypoterbooks/core/asset/styles.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/asset/images.dart';

class ExpandedContentWidget extends StatelessWidget {
  const ExpandedContentWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.grey4,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookModel.title!,
            style: AppStyles.font20blueSemiBold600,
          ),
          SizedBox(
            height: 8.h,
          ),
          bookInfo(AppImages.calenderImage, bookModel.releaseDate!, true),
          SizedBox(
            height: 8.h,
          ),
          bookInfo(AppImages.paperImage, bookModel.pages.toString(),
              false),
          SizedBox(
            height: 8.h,
          ),
          bookInfo(
              AppImages.penImage, bookModel.author!, false),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }

  Widget bookInfo(String icon, var textInfo, bool date) {
    DateTime dateTime = DateTime.parse(bookModel.releaseDate!);

    String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          icon,
          height: 20.h,
          width: 20.w,

        ),
        SizedBox(
          width: 7.h,
        ),
        date == true
            ? Text(
                formattedDate,
                style: AppStyles.font15blueRegular400,
              )
            : Text(
                textInfo,
                style: AppStyles.font15blueRegular400,
              )
      ],
    );
  }
}
