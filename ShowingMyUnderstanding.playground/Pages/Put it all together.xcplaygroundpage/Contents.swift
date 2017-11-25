/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
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
// Draw Background
canvas.drawRectangle(centreX: 150, centreY: 150, width: 300, height: 300)

// Draw a Border
canvas.lineColor = Color.white
for x in stride(from: 0, through: 300, by: 10){
    canvas.drawLine(fromX: 300, fromY: x, toX: x, toY: 0)
    canvas.drawLine(fromX: x, fromY: 300, toX: 0, toY: x)
}
// If...Else, Draw L or W
canvas.drawShapesWithBorders = false
let number = random(from: 0, toButNotIncluding: 2)
if number == 1{
    canvas.fillColor = Color.red
    canvas.drawRectangle(centreX: 100, centreY: 150, width: 20, height: 100)
    canvas.drawRectangle(centreX: 140, centreY: 100, width: 100, height: 20)
    canvas.textColor = Color.red
    canvas.drawText(message: "Take the L", size: 25, x: 80, y: 50)
} else {
    canvas.fillColor = Color.blue
    canvas.drawRectangle(centreX: 100, centreY: 150, width: 20, height: 100)
    canvas.drawRectangle(centreX: 150, centreY: 140, width: 20, height: 80)
    canvas.drawRectangle(centreX: 200, centreY: 150, width: 20, height: 100)
    canvas.drawRectangle(centreX: 150, centreY: 100, width: 120, height: 20)
    canvas.textColor = Color.blue
    canvas.drawText(message: "Took the W", size: 25, x: 80, y: 50)
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
