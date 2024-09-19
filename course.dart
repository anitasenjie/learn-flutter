import 'package:flutter/material.dart';

void main(){
	runApp(MyCourse());
}

class MyCourse extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return MaterialApp(
			home:
			CourseInputScreen(),
			);
	}
}

class CourseInputScreen extends StatefulWidget {
	@override
	_CourseInputScreenState createState() =>  _CourseInputScreenState();
}

class _CourseInputScreenState extends State<CourseInputScreen> {
	final TextEditingController_controller = TextEditingController();
		String result = '';

		void checkCourse() {
			if (_controller.text == 'MDSE') {
				setState(() {
					result =  'You are an MDSE student!';
				} );
			} else {
				setState(() {
					result = 'You are NOT an MDSE student';
				} );
			}
		}
}

@override
Widget build(BuildContext context) {
	return Scaffold (
		appBar: AppBar (
			title: Text('Course Checker'),
			),
			body: Padding (
					padding: const
					EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: mainAxisAlignment.center,
						children: [
							TextField(
								controller: _controller,
								decoration: InputDecoration(
									labelText: 'Enter your course code:',
									border: OutlineInputBorder(),
									),
									),
									SizedBox (height:20),
									ElevatedButton(onPressed: checkCourse,
										child:  Text('Check'), ),
										SizedBox(height:20),
										Text(
											result,
											style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
											 ),
											],
										 ),
										),
									);
}
}