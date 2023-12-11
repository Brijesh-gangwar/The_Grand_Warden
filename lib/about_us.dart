import 'package:flutter/material.dart';

class about_us extends StatelessWidget {
  const about_us({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var b = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Udemy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Empowering Learners, Inspiring Instructors',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              const Text(
                'At Udemy, we believe in the transformative power of education. Our mission is to empower individuals around the globe to pursue their passions, develop new skills, and achieve their goals. Whether you\'re a lifelong learner seeking personal enrichment or an expert eager to share your knowledge, Udemy provides a dynamic platform where education knows no boundaries.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'What Sets Us Apart',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Diverse Course Selection',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Explore thousands of courses spanning a vast array of subjects, from technology and business to art and wellness. Our curated selection ensures that there\'s something for everyone, whether you\'re a beginner or an advanced learner.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 0.03 * h,
              ),
              const Text(
                'Expert Instructors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Learn from industry experts, professionals, and seasoned instructors who are passionate about sharing their knowledge. Our commitment to quality ensures that every course is crafted with care and expertise.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 0.03 * h,
              ),
              const Text(
                'Flexible Learning',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Life is busy, and we understand that. That's why Udemy offers flexible learning options. Take courses at your own pace, on your own schedule, and from the comfort of your preferred device.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
