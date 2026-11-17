import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 22.0,
        title: const Text(
          'Student Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: IconButton(
              icon: const Icon(Icons.logout, color: Colors.black, size: 20),
              onPressed: () {
                print('Logged Out');
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/student_avatar.jpg'),
                  ),
                  const SizedBox(width: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Lloyd Justin Felecilda',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'ID: 544-492',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'BSCS 3RD YEAR',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Card(
                elevation: 3,
                shadowColor: Colors.black,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 4,
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 22,
                        ),
                        title: Text(
                          'luwidji21@gmail.com',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        dense: true,
                        visualDensity: VisualDensity.compact,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 22,
                        ),
                        title: Text(
                          '+63 912 345 6789',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        dense: true,
                        visualDensity: VisualDensity.compact,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.black,
                          size: 22,
                        ),
                        title: Text(
                          '123 Matina, Davao City, Philippines',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        dense: true,
                        visualDensity: VisualDensity.compact,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 28),

              const Text(
                'Subjects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 14),

              const _SubjectCard(
                title: 'Mobile Development',
                instructor: 'Mr. Smith',
                schedule: 'Mon/Wed 10:00 - 11:30 AM',
              ),
              const SizedBox(height: 12),
              const _SubjectCard(
                title: 'Database Systems',
                instructor: 'Mrs. Garcia',
                schedule: 'Tue/Thu 1:00 - 2:30 PM',
              ),
              const SizedBox(height: 12),
              const _SubjectCard(
                title: 'Operating Systems',
                instructor: 'Dr. Lee',
                schedule: 'Fri 8:00 - 11:00 AM',
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add Subject Clicked!');
        },
        backgroundColor: const Color(0xFFEDE7F6),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add, color: Color(0xFF311B92), size: 26),
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  final String title;
  final String instructor;
  final String schedule;

  const _SubjectCard({
    required this.title,
    required this.instructor,
    required this.schedule,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Instructor: $instructor',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 2),
              Text(
                'Schedule: $schedule',
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
