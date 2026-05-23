
}

class _NewAppState extends State<NewApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(title: const Text('My Smart App 2026'), backgroundColor: Colors.teal),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Clicks Counter:', style: TextStyle(fontSize: 22, color: Colors.teal)),
              Text('$counter', style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.teal)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() => counter++),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    child: const Text('Click Me', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => setState(() => counter = 0),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                    child: const Text('Reset', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
