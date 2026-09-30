
class AppRouter {
/*  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
        case AppRoutes.onboard:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
        case AppRoutes.bottomBar:
        return MaterialPageRoute(builder: (_) => MyNavigationBar());
      case AppRoutes.addEntry:
        final initialType = settings.arguments as String? ?? 'income';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => AddEntryCubit(
              repository: TransactionRepository(db: DBHelper.instance),
            )..switchType(initialType),
            child: AddEntryScreen(initialType: initialType),
          ),
        );
        case AppRoutes.allTrans:
        return MaterialPageRoute(builder: (_) => AllTransactionsScreen());
        case AppRoutes.aboutUs:
        return MaterialPageRoute(builder: (_) => AboutUsScreen());
        case AppRoutes.savings:
        return MaterialPageRoute(builder: (_) => Savings());
        case AppRoutes.seperateBudget:
          final monthKey = settings.arguments as String?;
          return MaterialPageRoute(
            builder: (_) => SeperateBudget(monthKey: monthKey),
          );
      case AppRoutes.addBudget:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => BudgetCubit(repository: BudgetRepository(db: DBHelper.instance)),
            child: const BudgetEntryScreen(),
          ),
        );
        case AppRoutes.newBudget:
        return MaterialPageRoute(
          builder: (_) => NewAddBudget()
        );
      // case AppRoutes.feedback:
      //   return MaterialPageRoute(builder: (_) => const FeedbackScreen());


      case AppRoutes.editBudget:
          return MaterialPageRoute(
            builder: (context) {
              final args = settings.arguments;
              String? monthKey;

              if (args is Map) {
                monthKey = args['monthKey'] as String?;
              } else if (args is String) {
                monthKey = args;
              }

              return EditBudgetScreen(
                monthKey: monthKey,
              );
            },
        );
      case AppRoutes.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            final l10n = AppLocalizations.of(context);
            return Scaffold(
              body: Center(
                child: GradientText(
                  title: l10n?.routeNotFound ?? 'Route not found',
                  fontSize: 35,
                  thick: FontWeight.w900,
                ),
          ),
            );
          },
        );
    }
  }*/
}
