import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/my_location/my_location_bloc.dart';
import 'package:raahi/application/search/search_bloc.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => state.isLoading
          ? Material(
              color: const Color(0xff2aa198),
              borderRadius: BorderRadius.circular(24.0),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Color(0xff002b36)),
                ),
              ),
            )
          : Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: const Color(0xff073642),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search',
                            hintStyle: TextStyle(
                              color: Colors.white24,
                              fontFamily: 'Playfair Display',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Playfair Display',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400,
                          ),
                          onChanged: (input) {
                            context
                                .bloc<SearchBloc>()
                                .add(SearchEvent.inputChanged(input: input));
                          },
                          validator: (_) => context
                              .bloc<SearchBloc>()
                              .state
                              .searchInput
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  exceedingLength: (_) =>
                                      'Enter a shorter query',
                                  multiline: (_) =>
                                      'Enter a single line of query',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                state.searchInput.value.fold(
                  (failure) => failure.maybeMap(
                    empty: (_) => Container(),
                    orElse: () => Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Material(
                        color: const Color(0xff2aa198),
                        borderRadius: BorderRadius.circular(24.0),
                        child: GestureDetector(
                          onTap: () => context
                              .bloc<MyLocationBloc>()
                              .state
                              .locationDataOption
                              .fold(
                                () => null,
                                (locationData) =>
                                    context.bloc<SearchBloc>().add(
                                          SearchEvent.sendQuery(
                                              locationData: locationData),
                                        ),
                              ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xff002b36),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  (_) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Material(
                      color: const Color(0xff2aa198),
                      borderRadius: BorderRadius.circular(24.0),
                      child: GestureDetector(
                        onTap: () => context
                            .bloc<MyLocationBloc>()
                            .state
                            .locationDataOption
                            .fold(
                              () => null,
                              (locationData) => context.bloc<SearchBloc>().add(
                                    SearchEvent.sendQuery(
                                        locationData: locationData),
                                  ),
                            ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff002b36),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
