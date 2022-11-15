part of 'lang_cubit.dart';

abstract class LangState extends Equatable {
  final Locale locale;
  const LangState(this.locale);
}

class LangInitial extends LangState {
  const LangInitial() : super(const Locale("en"));

  @override
  List<Object> get props => [locale];
}

class LangUpdateState extends LangState {
  const LangUpdateState(Locale locale) : super(locale);

  @override
  List<Object> get props => [locale];
}
