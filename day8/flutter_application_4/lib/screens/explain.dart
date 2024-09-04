import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubit/counter_cubit.dart';
import 'package:flutter_application_4/cubit/counter_state.dart';
import 'package:flutter_application_4/cubit/show_password.dart';
import 'package:flutter_application_4/widgets/evaluatedbutton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Explain extends StatelessWidget {
  int teamApoints = 0;
  int teamBpoints = 0;

  Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
        BlocProvider<ShowPasswordCubit>(create: (_) => ShowPasswordCubit()),
      ],
      child: BlocConsumer<CounterCubit, CounterState>(
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BlocBuilder<ShowPasswordCubit, bool>(
                    builder: (context, isVisible) {
                      return TextFormField(
                        obscureText: !isVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              icon: Icon(
                                isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () =>
                                  BlocProvider.of<ShowPasswordCubit>(context)
                                      .passwordVisibility()),
                          border: OutlineInputBorder(),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).temAPoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 1),
                            'Add 1 Point',
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 2),
                            'Add 2 Points',
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'A', buttonNum: 3),
                            'Add 3 Points',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).temBPoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 1),
                            'Add 1 Point',
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 2),
                            'Add 2 Points',
                          ),
                          myEvaluateButton(
                            () => BlocProvider.of<CounterCubit>(context)
                                .teamAIncrement(team: 'B', buttonNum: 3),
                            'Add 3 Points',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                myEvaluateButton(
                  () => BlocProvider.of<CounterCubit>(context).reset(),
                  'Reset',
                ),
              ],
            ),
          );
        },
        listener: (context, state) {
          if (state is CounterAIncrement) {
            teamApoints = BlocProvider.of<CounterCubit>(context).temAPoints;
          } else {
            teamBpoints = BlocProvider.of<CounterCubit>(context).temBPoints;
          }
        },
      ),
    );
  }
}
