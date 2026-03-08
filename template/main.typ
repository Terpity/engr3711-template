#import "@local/engr3711-template:0.1.0": *

#show: report.with(
  title: "Practical 0: Introduction to Template Creation",
  degree: "Bachelor of Report Writing (Honours)",
  author: "Report McTemplateface",
  group_members: ("John Doe", "Jane Doe"),
  motor_number: 0
)
#import "@preview/codly:1.3.0": *

= Abstract
This is a template for the Control Systems Practical Report. It includes styling for headings, code blocks, and a title page. The template is designed to be easily customizable for different practicals and report requirements.

#pagebreak()
= Section A
A1) 

The template includes `codly` by default, which provides syntax highlighting for code blocks. You can specify the language of a code block to get appropriate styling. For example, the following code block is styled as Arduino code: (credit to Will)
#codly(offset: 7,)

#figure(
```ino
void setup() {
  // Initialize serial communication
  Serial.begin(9600);
}

void loop() {
  Serial.println("Hello, world!");
  while (1);
}
```,
caption: [Example Arduino code block]
)
