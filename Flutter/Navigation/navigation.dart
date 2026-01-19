// Think of context like:
// A reference to the current node inside a giant UI tree, with access to parents and services.
// Similar to:
// this in Java (but more powerful)
//Android's Context (Activity context)

// context = "Where am I inside the UI tree?"
// So when you call:
// Navigator.push(context, ...)
// You are saying:
// "From my current position, go upward until you find the Navigator and perform navigation."


// Pro-level tip (you’ll use later)
// Sometimes you’ll see:
// Navigator.of(context)
// This literally means:
// Give me the Navigator that belongs to this context.

// Simple rule to remember
// If a widget is visible on screen, its context is safe to use.
// If you are inside initState, timers, async calls → always check mounted before using context.

// Example (real intuition)
// If your widget is here:

// MaterialApp
//   └── Navigator  ← this exists internally
//        └── HomeScreen
//             └── Button ← your context here


// When you do:
// Navigator.push(context, ...)
// Flutter walks up the tree from that context until it finds a Navigator.


//Named Routes 
// Step 1: Define routes in MaterialApp
// MaterialApp(
//   initialRoute: '/',
//   routes: {
//     '/': (context) => const SplashScreen(),
//     '/home': (context) => const HomeScreen(),
//     '/login': (context) => const LoginScreen(),
//   },
// );
// Step 2: Navigate using names
// Navigator.pushNamed(context, '/home');



//PUSH
// push (go to next screen)
// Navigator.push(
//   context,
//   MaterialPageRoute(builder: (_) => const HomeScreen()),
// );
// Splash stays in memory.



// pushReplacement (replace current screen)
// Used for splash → home.
// Navigator.pushReplacement(
//   context,
//   MaterialPageRoute(builder: (_) => const HomeScreen()),
// );
// Splash is destroyed.


// pop (go back)
// Navigator.pop(context);




// Flutter Lifecycle (very important for splash screen, API, animations, etc.)
// A StatefulWidget has a life.
// Main methods you need:
// createState() → initState() → build() → dispose()
// initState()
// Runs once only, when screen first appears.
// Use for:
// API calls
// timers
// navigation (splash)
// controllers
// Example:

@override
void initState() {
  super.initState();
  print("Screen started");
}

// build()
// Runs many times
// Every time UI updates → build runs again.

@override
Widget build(BuildContext context) {
  print("Rebuilding UI");
  return Scaffold(...);
}


// Never put heavy logic here.
// dispose()
// Runs when screen is removed from memory.
// Use for:
// cleaning controllers
// closing streams
// cancelling timers

@override
void dispose() {
  print("Screen destroyed");
  super.dispose();
}

// Real-life lifecycle example (professional pattern)

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  late String data;

  @override
  void initState() {
    super.initState();
    data = "Loaded once";
  }

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }

  @override
  void dispose() {
    print("Clean memory here");
    super.dispose();
  }
}