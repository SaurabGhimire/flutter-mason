import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
      builder: (context, state) {
        if (state is {{name.pascalCase()}}Fetching) {
          return const CircularProgressIndicator();
        } else if (state is {{name.pascalCase()}}FetchFailure) {
          return const Center(
            child: Text(
              'अहिले उपलब्ध हुन सकेन',
            ),
          );
        } else if (state is {{name.pascalCase()}}FetchSuccess) {
          var {{successVariableName}} = state.{{successVariableName}};
          return {{successVariableName}}.isEmpty
              ? Center(
                  child: Text(
                    'डाटा खाली छ।',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              : Container();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
