//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
       
     let trydoctument=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0].append(Character)
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
