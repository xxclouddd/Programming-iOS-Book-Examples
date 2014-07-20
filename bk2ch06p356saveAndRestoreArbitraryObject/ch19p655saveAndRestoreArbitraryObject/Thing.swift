

import UIKit

class Thing : NSObject, UIStateRestoring {
    
    var word = ""
    
    var objectRestorationClass : UIObjectRestoration? // unused
    
    var restorationParent : UIStateRestoring? // unused
    
    func encodeRestorableStateWithCoder(coder: NSCoder!) {
        println("thing encode")
        coder.encodeObject(self.word, forKey:"word")
    }
    
    func decodeRestorableStateWithCoder(coder: NSCoder!) {
        println("thing decode")
        self.word = coder.decodeObjectForKey("word") as String
    }
    
    func applicationFinishedRestoringState() {
        println("finished thing")
    }
    
    
}
