import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raahi/application/navigation/navigation_bloc.dart';
import 'package:raahi/domain/navigation/instruction_type.dart';
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
            child: state.instructionOption.fold(
              () => Container(),
              (instruction) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    instruction.type.map(
                      left: (_) => Icons.arrow_back_rounded,
                      right: (_) => Icons.arrow_forward_rounded,
                      sharpLeft: (_) => Icons.arrow_back_rounded,
                      sharpRight: (_) => Icons.arrow_forward_rounded,
                      slightLeft: (_) => Icons.arrow_back_rounded,
                      slightRight: (_) => Icons.arrow_forward_rounded,
                      straight: (_) => Icons.arrow_upward_rounded,
                      enterRoundabout: (_) => Icons.all_out_rounded,
                      exitRoundabout: (_) => Icons.all_out_rounded,
                      uTurn: (_) => Icons.arrow_downward_rounded,
                      goal: (_) => Icons.done_outline_rounded,
                      depart: (_) => Icons.cancel,
                      keepLeft: (_) => Icons.chevron_left_rounded,
                      keepRight: (_) => Icons.chevron_right_rounded,
                    ),
                    color: Colors.white,
                    size: 48.0,
                  ),
                  const Padding(padding: EdgeInsets.all(16.0)),
                  Text(
                    instruction.instruction,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Playfair Display',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  state.instructionOption.fold(
                    () => Container(),
                    (instruction) => instruction.type == const InstructionType.goal()
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Material(
                              color: const Color(0xff2aa198),
                              borderRadius: BorderRadius.circular(24.0),
                              child: GestureDetector(
                                onTap: () => context.bloc<NavigationBloc>().add(
                                      const NavigationEvent.nextInstruction(),
                                    ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Icon(
                                    Icons.next_plan_rounded,
                                    color: Color(0xff002b36),
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
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
