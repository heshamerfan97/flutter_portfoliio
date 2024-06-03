import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc.dart';
import 'package:portfolio/modules/contacts/ui/screens/contacts_screen.dart';
import 'package:portfolio/modules/home/ui/screens/home_screen.dart';
import 'package:portfolio/modules/main/controller/main_screens_nav_controller.dart';
import 'package:portfolio/modules/projects/ui/screens/projects_screen.dart';
import 'package:portfolio/utils/resizer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../shared/view/helper/space.dart';
import '../../../home/ui/components/home_app_bar.dart';
import '../../../repositories/ui/screens/repositories_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key}){
    itemPositionsListener.itemPositions.addListener(() {
      if(canChange) {
        final positions = itemPositionsListener.itemPositions.value;
        final first = positions
            .where((ItemPosition position) => position.itemTrailingEdge > 0)
            .reduce((ItemPosition min, ItemPosition position) =>
                position.itemTrailingEdge < min.itemTrailingEdge ? position : min)
            .index;
        final last = positions
            .where((ItemPosition position) => position.itemLeadingEdge < 1)
            .reduce((ItemPosition max, ItemPosition position) =>
        position.itemLeadingEdge > max.itemLeadingEdge
            ? position
            : max)
            .index;
        AppBloc.mainScreenNavCubit.changeScreen(last==mainScreens.length-1?last:first);
      }
    });
  }

  final mainScreens = [HomeScreen(), ProjectsScreen(), RepositoriesScreen(), ContactsScreen()];
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  bool canChange = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Resizer(
              desktop: HomeAppBar(oneLine: true),
              largeMobile: HomeAppBar(oneLine: false),
              mobile: HomeAppBar(oneLine: false),
              tablet: HomeAppBar(oneLine: true)),
          const VerticalSpace(32),
          Expanded(
            child: BlocListener<MainScreenNavCubit, int>(
              listener: (context, index) async {
                canChange = false;
                await _itemScrollController.scrollTo(
                    index: index, curve: Curves.easeInOut, duration: const Duration(milliseconds: 500));
                canChange = true;
              },
              child: ScrollablePositionedList.builder(
                itemBuilder: (context, index) =>
                    Padding(
                      padding: EdgeInsets.only(top: index==0?0:56.0),
                      child: mainScreens[index],
                    ),
                itemCount: mainScreens.length,
                itemScrollController: _itemScrollController,
                itemPositionsListener: itemPositionsListener,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
