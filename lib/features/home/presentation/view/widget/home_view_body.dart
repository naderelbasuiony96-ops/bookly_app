import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBoockListView(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
