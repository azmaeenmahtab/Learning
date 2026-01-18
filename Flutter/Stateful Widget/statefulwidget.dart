// Every stateful widget has a state object .
// Flutter internally keeps a flag:
// bool mounted;
// mounted == true → widget is still alive in the UI tree
// mounted == false → widget has been removed (disposed)
// mounted answers one simple question:
// "Is this screen still on the UI?"

// Mental model you should keep
// A widget can die at any time.
// Async code doesn’t care.
// So before touching UI again → check if still alive.
// Final one-liner you’ll remember forever
// mounted = “Am I still on screen, or am I already dead?”

// Real-world cases where mounted matters
// You MUST check mounted when using context inside:
// Future callbacks
// Timer callbacks
// API responses
// async/await functions
// delayed navigation
// animation listeners

Future.delayed(Duration(seconds: 3), () {
  if (!mounted) return;

  Navigator.push(context, ...);
});
