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