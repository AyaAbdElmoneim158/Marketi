import 'package:flutter/material.dart';
import '../../../auth/presentation/view/widgets/auth_app_bar.dart';
import 'home_screen.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(title: "Popular Product", hasAction: true),
      //Todo: pagination.logic
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchField(),
                HomeHeader(
                  type: "All Products", //Todo: string
                  showViewAll: false,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                  ),
                  itemCount: 20, // Number of items
                  itemBuilder: (context, index) => Product(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
