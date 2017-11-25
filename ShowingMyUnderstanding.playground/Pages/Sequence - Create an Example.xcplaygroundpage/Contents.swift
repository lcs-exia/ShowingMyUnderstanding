/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

 ## Remember
 
 Commit your work as you make progress on this page.

 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Replace this comment and add your code below...

// Draw the base and Pole of the Traffic light
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 150, centreY: 150, width: 75, height: 175)
canvas.drawRectangle(centreX: 150, centreY: 50, width: 15, height: 100)

// Draw Red Light
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 150, centreY: 210, width: 50, height: 50)

// Draw Yellow Light
canvas.fillColor = Color.yellow
canvas.drawEllipse(centreX: 150, centreY: 150, width: 50, height: 50)

//Draw Green Light
canvas.fillColor = Color.green
canvas.drawEllipse(centreX: 150, centreY: 90, width: 50, height: 50)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
