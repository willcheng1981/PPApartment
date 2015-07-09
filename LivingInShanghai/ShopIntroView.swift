
import UIKit

class ShopIntroView: UIView {
    var isSliding = false
    var isShowen = true
    
    func hide() {
        self.center.x = UIScreen.mainScreen().applicationFrame.size.width / 2 + UIScreen.mainScreen().applicationFrame.size.width
        isShowen = false
    }
    
    func swipToRight() {
        isShowen == true ? slideToRight() : slideFromLeft()
    }
    
    func swipToLeft() {
        isShowen == true ? slideToLeft() : slideFromRight()
    }
    
    func slideToRight() {
        if isShowen != true {
            return
        }
        
        isSliding = true
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.center.x += UIScreen.mainScreen().applicationFrame.size.width
            }) { (complete: Bool) -> Void in
                if complete == true {
                    self.isShowen = false
                    self.isSliding = false
                }
        }
    }
    
    func slideToLeft() {
        if isShowen != true {
            return
        }
        
        isSliding = true
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.center.x -= UIScreen.mainScreen().applicationFrame.size.width
            }) { (complete: Bool) -> Void in
                if complete == true {
                    self.isShowen = false
                    self.isSliding = false
                }
        }
    }
    
    func slideFromRight() {
        if isShowen == true {
            return
        }
        
        isSliding = true
        self.center.x = UIScreen.mainScreen().applicationFrame.size.width / 2 + UIScreen.mainScreen().applicationFrame.size.width
        
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.center.x = UIScreen.mainScreen().applicationFrame.size.width / 2
            }) { (complete: Bool) -> Void in
                if complete == true {
                    self.isShowen = true
                    self.isSliding = false
                }
        }
    }
    
    func slideFromLeft() {
        if isShowen == true {
            return
        }
        
        isSliding = true
        self.center.x = UIScreen.mainScreen().applicationFrame.size.width / 2 - UIScreen.mainScreen().applicationFrame.size.width
        
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            self.center.x = UIScreen.mainScreen().applicationFrame.size.width / 2
            }) { (complete: Bool) -> Void in
                if complete == true {
                    self.isShowen = true
                    self.isSliding = false
                }
        }
    }
    
    func setImage(url: String) {
        let introImage = self.viewWithTag(100) as! UIImageView
        introImage.image = UIImage(named: url)
    }
    
    func setIntro(intro: String) {
        let introText = self.viewWithTag(101) as! UITextView
        introText.text = intro
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
