import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perplexity_clone_app/themes/theme.dart';



final themeProvider = StateProvider<ThemeData>((ref) => lightTheme);
