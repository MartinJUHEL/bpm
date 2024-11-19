import 'package:assoshare/core/di/injection.dart';
import 'package:assoshare/core/domain/entities/city_model.dart';
import 'package:assoshare/core/presentation/widgets/submit_button.dart';
import 'package:assoshare/features/publish_ad/presentation/blocs/publish_ad_search_city_bloc/publish_ad_search_city_bloc.dart';
import 'package:assoshare/features/publish_ad/presentation/widgets/city_search_delegate.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class PublishAdSearchCityPage extends StatefulWidget {
  final Function(CityModel city) submit;

  const PublishAdSearchCityPage({super.key, required this.submit});

  @override
  State<PublishAdSearchCityPage> createState() =>
      _PublishAdSearchCityPageState();
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
      create: (context) => locator<PublishAdSearchCityBloc>(),
      child: BlocBuilder<PublishAdSearchCityBloc, PublishAdSearchCityState>(
          builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
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
                      final sessionToken = const Uuid().v4();
                      final suggestion = await showSearch<String?>(
                        context: context,
                        delegate: CitySearchDelegate(
                            context: context,
                            publishSearchCityBloc:
                                BlocProvider.of<PublishAdSearchCityBloc>(
                                    context)
                                  ..add(PublishAdSearchCityEvent.started(
                                      sessionToken))),
                      );
                      _controller.text = suggestion?? '';
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
                      contentPadding:
                          const EdgeInsets.only(left: 8.0, top: 16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
                  child: SubmitButton(
                      title: 'next',
                      isEnabled: state.status.isSuccess,
                      isLoading: state.status.isLoading,
                      onPressed: () => {
                        if(state.city!=null){
                          widget.submit(state.city!)
                        }else{
                          //todo error
                        }
                      }),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
