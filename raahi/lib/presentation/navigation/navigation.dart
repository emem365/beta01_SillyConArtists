import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/navigation_bloc.dart';
import 'package:raahi/injection.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NavigationBloc>(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) => Scaffold(
          backgroundColor: const Color(0xff073642),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Icon(
                  Icons.chevron_left_rounded,
                  color: Colors.white,
                  size: 48.0,
                ),
                Padding(padding: EdgeInsets.all(16.0)),
                Text(
                  'Turn Left',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Playfair Display',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffb58900),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          state.resultObjectOption.fold(
                            () => '',
                            (resultObject) => resultObject.name.getOrCrash(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => context.bloc<NavigationBloc>().add(
                              const NavigationEvent.stop(),
                            ),
                        child: const Text('Cancel'),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
