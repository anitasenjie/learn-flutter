import  'dart:io';

void main() {
	//Ask the user for input
	print('Enter your course code:');

	//Read input from the user
	String? input = stdin.readLineSync();

	//Check whether input is "MDSE"
	if  (input  ==  'MDSE') {
		print('You are an MDSE student!');
	} else {
		print('You are NOT an MDSE student');
	}
}