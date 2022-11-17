part of '{{name}}_cubit.dart';

abstract class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Fetching extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}FetchSuccess extends {{name.pascalCase()}}State {
  final dynamic {{ successVariableName }};
  const {{name.pascalCase()}}FetchSuccess(
    this.{{successVariableName}},
  );
  @override
  List<Object> get props => [{{successVariableName}}];
}

class {{name.pascalCase()}}FetchFailure extends {{name.pascalCase()}}State {
  final String e;
  const {{name.pascalCase()}}FetchFailure(
    {
      this.e = "Unexpected Error",
    }
  );

  @override
  List<Object> get props => [e];
}
