import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harrypoterbooks/core/asset/colors.dart';
import 'package:harrypoterbooks/core/asset/images.dart';
import '../../../../../../core/models/book_model.dart';
import 'book_image_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key, required this.bookModels});
  final List<BookModel> bookModels;

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppImages.logo,color: AppColor.yellow,height: 60.h,width: 101.w,),
              Icon(Icons.menu,color: AppColor.yellow,size: 30.sp,)
            ],
          ),
        ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CarouselSlider(
            items: widget.bookModels.map((bookModel) {
              return BookImageWidget(bookModel2: bookModel);
            }).toList(),
            options: CarouselOptions(
              height:720.h,
              viewportFraction: 0.9,
              reverse: false,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ],
      )
      ],
    );
  }
}
