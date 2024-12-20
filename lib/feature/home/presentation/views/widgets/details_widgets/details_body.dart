import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:harrypoterbooks/core/asset/styles.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.bookModel3});
  final BookModel bookModel3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:20.w,right: 20.w,bottom: 15.h),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image(
                  image: NetworkImage(bookModel3.cover!),
                  height: 250.h,
                  width: 230.w,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 25.h,),
            bookInfo("Title", bookModel3.title!),
            SizedBox(height: 20.h,),
            bookInfo("Author	",bookModel3.author!),
            SizedBox(height: 20.h,),
            bookInfo("Release Date	", bookModel3.releaseDate!),
            SizedBox(height: 20.h,),
            bookInfo("Pages	",bookModel3.pages.toString()),
            SizedBox(height: 20.h,),
            bookInfo("Dedication	", bookModel3.dedication!),
            SizedBox(height: 20.h,),
            bookInfo("Summary	", bookModel3.summary!),
        
          ],
        ),
      ),
    );
  }
  Widget bookInfo(String text1,String text2){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,style: AppStyles.font17whiteBold700,),
        SizedBox(
          width: 200.w,
            child: Text(text2,style: AppStyles.font14whiteRegular400,))
      ],
    );
  }
}
