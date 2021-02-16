## Graffiti-Art-Simulator
# Artistic Vision
Over winter break my wife and I went to a graffiti workshop in Brooklyn where we learnt about the history and beauty behind graffiti and even got to practice some of the different techniques that the pros use. It is actually a lot harder than it looks! We have been searching for another way to do more graffiti (legally, of course) at home and this project was the perfect solution.

# Materials
* Raspberry Pi 4B
* ESP32-Wrover-Dev
* Analog Joystick
* Breadboard
* 2 Push-buttons with Colored Caps
* SPDT Switch
* Female to Female Wires
* 9V Lithium Ion Battery Pack
* External Monitor

# Project Overview
The project consisted of three scripts:
  * Python script that would read-in an updated stock price every 60 seconds and compare it to the previous price. If the new price was bigger than the old price it would write a 1 in a seperate text file, if it was smaller it would write a 0 in that text file. It would also update a seperate text file with the current price.
  * Another python script that would read the text file that had either a 0 or 1 in it and then turn on the LEDs to create a green smiley face if it was a 1 and a red upside down smiley face if it was a zero.
  * Processing Script that would read both text files to both update the display with the current price and use the 0 or 1 to determine whether the stock had gone up or down. When the stock goes up it would rain green money symbols and when it went down it would rain money symbols on fire.
# Technical Issues
My main difficulty was figuring out how to use the joystick and a push-button as a USB mouse on the raspberry pi. After figuring that out I realized that the delays between each of my input's data-writes to serial was slowing the movements of the joystick mouse but without the delays the processing script was not reacting quick enough for the simulator to work smoothly. After a few iterations I found a good medium where neither thing was reacting too slowly to my inputs. Another issue that came up was that my raspberry pi was getting very hot and therefore I decided not to put it inside the enclosure.
# Video
A video of my work can be found [here](https://www.youtube.com/watch?v=qQE452snG0A).
