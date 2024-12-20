import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harrypoterbooks/core/asset/colors.dart';
import 'package:harrypoterbooks/core/network/api_service.dart';
import 'package:harrypoterbooks/feature/home/data/repo/book_repo_implementation.dart';
import 'package:harrypoterbooks/feature/home/presentation/manager/book_cubit.dart';
import 'package:harrypoterbooks/feature/home/presentation/views/widgets/home_widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return BookCubit(BookRepoImplementation(ApiService(Dio())))
          ..fetchBooks();
      },
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.blueColor,
          body: HomeBody(),
        ),
      ),
    );
  }
}
