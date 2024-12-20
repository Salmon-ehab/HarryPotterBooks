import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:harrypoterbooks/core/models/book_model.dart';
import 'package:harrypoterbooks/core/routing.dart';
import 'package:harrypoterbooks/feature/home/presentation/views/widgets/home_widgets/expanded_content_widget.dart';

class BookImageWidget extends StatefulWidget {
  const BookImageWidget({super.key, required this.bookModel2});
  final BookModel bookModel2;
  @override
  State<BookImageWidget> createState() => _BookImageWidgetState();
}

class _BookImageWidgetState extends State<BookImageWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            height: isExpanded ? 500.h : 400.h,
            width: isExpanded ? 320.w : 300.w,
            bottom: isExpanded ? 120.h : 200.h,
            child: ExpandedContentWidget(
              bookModel: widget.bookModel2,
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: isExpanded ? 305.h : 200.h,
              child: GestureDetector(
                onPanUpdate: onPanUpdated,
                onTap:onOpenDetail,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image(
                    image: NetworkImage(
                      widget.bookModel2.cover!,
                    ),
                    fit: BoxFit.fill,
                    height: 400.h,
                    width: 300.w,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  void onPanUpdated(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dy > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }

  void onOpenDetail(){
    if(!isExpanded){
      setState(() {
        isExpanded =true;
      });
      return;
    }
     context.push(AppRouter.detailsScreenPath,extra: widget.bookModel2);
  }
}
