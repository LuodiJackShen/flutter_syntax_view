import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/src/syntaxes/yaml.dart';

import 'index.dart';

abstract class SyntaxBase {
  SyntaxTheme get syntaxTheme;
  TextSpan format(String src);
  Syntax get type;
}

///Supported Syntaxes Enum
enum Syntax {
  DART,
  JAVA,
  KOTLIN,
  SWIFT,
  JAVASCRIPT,
  YAML,

  ///TODO SUPPORT MORE SYNTAXES
}

SyntaxBase getSyntax(Syntax syntax, SyntaxTheme theme) {
  switch (syntax) {
    case Syntax.DART:
      return DartSyntaxHighlighter(theme);
    case Syntax.JAVA:
      return JavaSyntaxHighlighter(theme);
    case Syntax.KOTLIN:
      return KotlinSyntaxHighlighter(theme);
    case Syntax.SWIFT:
      return SwiftSyntaxHighlighter(theme);
    case Syntax.JAVASCRIPT:
      return JavaScriptSyntaxHighlighter(theme);
    case Syntax.YAML:
      return YamlSyntaxHighlighter(theme);
    default:
      return DartSyntaxHighlighter(theme);
  }
}
