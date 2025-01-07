import 'package:assoshare/app/dimens.dart';
import 'package:assoshare/core/utils/build_context_ext.dart';
import 'package:assoshare/presentation/navigation/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: Dimens.bottomBarHeight,
        padding: const EdgeInsets.symmetric(vertical: Dimens.paddingSmall, horizontal: Dimens.paddingRegular),
        shape: const CircularNotchedRectangle(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => context.read<NavigationCubit>().getNavBarItemFromIndex(0),
                  icon: const Icon(Icons.search),
                  color: tabIndex == 0 ? context.colorScheme.primary : null,
                )),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => context.read<NavigationCubit>().getNavBarItemFromIndex(1),
                  icon: const Icon(Icons.favorite_border_outlined),
                  color: tabIndex == 1 ? context.colorScheme.primary : null,
                )),
            const SizedBox(
              width: Dimens.homeFloatingButtonSpace,
            ),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => context.read<NavigationCubit>().getNavBarItemFromIndex(2),
                  icon: const Icon(Icons.message_outlined),
                  color: tabIndex == 2 ? context.colorScheme.primary : null,
                )),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => context.read<NavigationCubit>().getNavBarItemFromIndex(3),
                  icon: const Icon(Icons.person_2_outlined),
                  color: tabIndex == 3 ? context.colorScheme.primary : null,
                ))
          ],
        ));
  }
}
