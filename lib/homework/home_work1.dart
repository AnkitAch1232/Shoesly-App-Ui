import 'package:flutter/material.dart';

class DiscussionForumScreen extends StatefulWidget {
  const DiscussionForumScreen({super.key});

  @override
  State<DiscussionForumScreen> createState() => _DiscussionForumScreenState();
}

class _DiscussionForumScreenState extends State<DiscussionForumScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Dixcussion Forum",
            style: TextStyle(
              color: Colors.white38,
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            tabs: [
              Text(
                "Exam-Specific",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                "Q&A and Doubt Clearing",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                "Resource Sharing",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Search a Question",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Text("HI"),
            Text("HI"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AlertDialog(
              title: Text("Ask a Question"),
              content: Container(
                height: 250,
                width: double.maxFinite,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Questions",
                        prefixIcon: Icon(
                          Icons.image,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
