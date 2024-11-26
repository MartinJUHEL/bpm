import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/presentation/widgets/scroll_view_fill.dart';
import 'package:assoshare/core/presentation/widgets/submit_button.dart';
import 'package:assoshare/features/searchaddress/domain/entities/city_entity.dart';
import 'package:assoshare/features/searchaddress/presentation/blocs/publish_ad_search_city_bloc/search_city_cubit.dart';
import 'package:assoshare/features/searchaddress/presentation/widgets/city_search_delegate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublishAdSearchCityPage extends StatefulWidget {
  final Function(CityEntity city) submit;

  const PublishAdSearchCityPage({super.key, required this.submit});

  @override
  State<PublishAdSearchCityPage> createState() => _PublishAdSearchCityPageState();
}

class _PublishAdSearchCityPageState extends State<PublishAdSearchCityPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => locator<SearchCityCubit>()..init(),
      child: BlocBuilder<SearchCityCubit, SearchCityState>(builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: ScrollViewFill(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: size.height * 0.02)),
                  const Text('chooseCity').tr(),
                  Padding(padding: EdgeInsets.only(bottom: size.height * 0.02)),
                  Center(
                    child: TextField(
                      controller: _controller,
                      readOnly: true,
                      onTap: () async {
                        context.read<SearchCityCubit>().onSearchStarted();
                        final suggestion = await showSearch<CityEntity?>(
                          context: context,
                          delegate: CitySearchDelegate(
                              parentContext: context, searchCityCubit: BlocProvider.of<SearchCityCubit>(context)),
                        );
                        _controller.text = suggestion?.displayCity() ?? '';
                      },
                      // with some styling
                      decoration: InputDecoration(
                        icon: Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 10,
                          height: 10,
                          child: const Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                        ),
                        hintText: tr('enterYourCity'),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 8.0, top: 16.0),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox.shrink()),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
                    child: SubmitButton(
                        title: tr('next'),
                        isEnabled: state.isCtaEnabled(),
                        isLoading: state.isLoading,
                        onPressed: () {
                          CityEntity? selectedCity = state.selectedCity;
                          if (selectedCity != null) {
                            widget.submit(selectedCity);
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
