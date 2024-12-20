import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harrypoterbooks/feature/home/presentation/manager/book_cubit.dart';
import 'package:harrypoterbooks/feature/home/presentation/manager/book_state.dart';

import '../../../../../../core/asset/colors.dart';
import 'carousel_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(builder: (context, state) {
      if (state is BookSuccessState) {
        return   CarouselWidget(bookModels: state.book);
      } else if (state is BookFailureState) {
        return const Center(
          child:  Text(
            "Error",
            style: TextStyle(fontSize: 30, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        );
      } else {
        return const Center(child: CircularProgressIndicator(color:AppColor.yellow,));
      }
    });
  }
}
