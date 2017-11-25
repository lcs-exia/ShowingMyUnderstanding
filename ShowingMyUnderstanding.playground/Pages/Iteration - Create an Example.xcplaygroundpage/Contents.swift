/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Replace this comment and add your code below...
// Draw Checkerboard
for x in stride(from: 0, through: 500, by: 100){
    for y in stride(from: 0, through: 500, by: 100){
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}
for x in stride(from: 50, through: 500, by: 100){
    for y in stride(from: 50, through: 500, by: 100){
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
