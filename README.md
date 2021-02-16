# Graffiti-Art-Simulator
# Artistic Vision
Over winter break my wife and I went to a graffiti workshop in Brooklyn where we learnt about the history and beauty behind graffiti and even got to practice some of the different techniques that the pros use. It is actually a lot harder than it looks! We have been searching for another way to do more graffiti (legally, of course) at home and this project was the perfect solution.

# Materials
* Raspberry Pi 4B
* ESP32-Wrover-Dev
* Analog Joystick
* Breadboard
* 2 Push-buttons with Colored Caps
* SPDT Switch
* Bunch of Wires
* 9V Lithium Ion Battery Pack
* External Monitor

# Project Overview
The project consisted of two scripts that communicated with each other serially:

* An Arduino script that ran on the ESP32 that would take in all inputs from the user and either send data serially over to the processing script or move/control the raspberry pi's mouse serially.
    
* A processing script that would take in the user input data from the ESP32 and use it to run a Graffiti Art Simulator. To switch between drawing and not drawing, the user would have to toggle the SPDT switch (which controlled the left clicker of the mouse). To move the spray-paint can around the canvas the user would use the joystick. To clear the canvas the user would push the joystick's push-button. To change the color of the paint, the user would use the two push-buttons. One button was programmed to subtract 1 from the current hue value while the other would add 1 to the current hue value.n it would rain money symbols on fire.
# Technical Issues
My main difficulty was figuring out how to use the joystick and a push-button as a USB mouse on the raspberry pi. After figuring that out I realized that the delays between each of my input's data-writes to serial was slowing the movements of the joystick mouse but without the delays the processing script was not reacting quick enough for the simulator to work smoothly. After a few iterations I found a good medium where neither thing was reacting too slowly to my inputs. Another issue that came up was that my raspberry pi was getting very hot and therefore I decided not to put it inside the enclosure.
# Video
A video of my work can be found [here](https://www.youtube.com/watch?v=qQE452snG0A).
