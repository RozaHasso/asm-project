# Problem formulation

The project focuses on creating a simple counting timer, so that the user can input a number and ask for start countingdown, when it gets to zero the timer starts beeping. 
The user can stop countingdown at any time to come back to the start point.

The Problem Statments:
1. What kind of components can be used in the project.
2. What is the maximum number the user can input.
3. How to display numbers on a screen.
4. How the system will be designed.
5. How to implement the system in AVR assrmbler.

# Analysis

See Alarm.asta

# Testing

1. By pressing two buttons: "Increment" and "Decrement" determines the input data -> set input for 2 seconds (00000010) -> 
-> by pressing "Start" button the countdown starts -> after 2 seconds the alarm beeps -> by pressing "Cancel" button the beeping stops
-> after this, device is ready to be used again.

2. By pressing two buttons: "Increment" and "Decrement" determines the input data -> set input for 8 seconds (00001000) -> 
-> by pressing "Start" button the countdown starts -> after 8 seconds the alarm beeps -> by pressing "Cancel" button the beeping stops
-> after this, device is ready to be used again.

3. By pressing two buttons: "Increment" and "Decrement" determines the input data -> set input for 5 seconds (00000101) -> 
-> by pressing "Start" button the countdown starts -> by pressing "Cancel" button the countdown is resseting -> after this, device is ready to be used again.

All four buttons: "Increment", "Decrement", "Start" and "Cancel" are working well.
Display showing the values in real time with very short delay.

# A Project for the AVR - Written in Assembler Language

The purpose of this assignment is to write a small software project in assembler code. The MCU to be used is the AVR ATmega2560, and the project should include some form of interaction with sensors and actuators.

## Description of the Project

You are going to design and implement an application on the AVR atmega2560 microcontroller. This could be a game, a "smart-home" device, some sort of controller of electrical equipment. Your imagination and time are the only limits.

The following are some non-functional requirements for the project:
* The application must be written in AVR assembler
* Your project must include some form of user interface (using sensors and actuators from the Arduino starter kit)


### Learning goals (from the course description):
* Create functioning assembler programs for microcontrollers
* Analyse ASM programs (AVR MCU) and calculate execution time
* Execute and debug assembler programs
* Create applications using assembler programming
* Integrate simple I/O devices in embedded applications


## Deliveries

### Problem Formulation
You are going to define and formulate the problem you want to solve in a problem statement. The project formulation is the product of the first two weeks, so take your time to generate a lot of ideas before deciding. 

### Project Plan (Analysis, design and test plan)
* You must analyse the problem and describe it before implementing it. *Use for instance Activity or State Machine diagrams for this purpose.*

* Make a plan for testing your implementation. The plan should provide details on how to test the individual components or actions of your implementation.

* When you know what to solve and how, split the work into tasks and devide them between group members. *You can use githubs build in issue tracking or any other task tracking system to manage your tasks*

### Implementation
* Implement the project in AVR assembler. 
* The code must be well-structured and extensively commented, and you should apply software patterns to solve general problems. 
* The code should be keept under version control in a fork of this git repository.

## Practical Information
### Definition of Done
The project should be demonstrated for me on class and your implementation code handed in on github in the form of a pull request. Analysis, design and other relevant material should be documented in the README.md. See section below for details on how to do that.

*All group members should have participated actively in producing code and thus it should be possible to find all group members in the git commit history.*

### Deadline 
Your implementation should be ready and handed in **before** the first lesson of week 49 (8.20am)

### Github
Before starting to commit any code, this repository should be forked to the github account of a group member. This forked repository is where you are going to create your Atmel Studio project and commit your assembler code. Eventually you can "Hand in" by creating a pull request. This will enable me to see your code and provide feedback on your project.

The documentation should be written in the README.md on the repository. You can use markdown to format the document ([Markdown cheatsheet here](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf))

If you are unsure of the details, ask me or a fellow student og go watch a video (like this: https://www.youtube.com/watch?v=_NrSWLQsDL4) or read the documentation.
