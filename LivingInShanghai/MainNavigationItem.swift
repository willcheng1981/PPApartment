
import UIKit

class MainNavigationItem: UINavigationItem {
    
    var hasInited: Bool = false
    weak var holder: UIViewController!
    var signInButton: UIBarButtonItem!
    
    func initItem(holder: UIViewController) {
        if hasInited == true {
            return
        }
        self.holder = holder
        
        //create and init signIn button
        signInButton = UIBarButtonItem(title: "Login", style: UIBarButtonItemStyle.Bordered, target: self, action: "signIn")
        
        if SharedData.sharedData().hasLogin == false {
            rightBarButtonItem = signInButton
        }
        
        //Observer login stat
        SharedData.sharedData().addObserver(self, forKeyPath: "hasLogin", options: NSKeyValueObservingOptions.New, context: nil)
        
        hasInited = true
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject: AnyObject?, change: [NSObject: AnyObject]?, context: UnsafeMutablePointer<Void>)
    {
        if keyPath == "hasLogin" {
            rightBarButtonItem = (change!["new"] as! Bool == true ? nil : signInButton)
        }
    }
    
    func signIn() {
        if let loginViewController  = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("SigneInViewControl") as? UIViewController  {
            holder.parentViewController?.presentViewController(loginViewController, animated: true, completion: nil)
        }
    }
    
    deinit {
        if hasInited == true {
            SharedData.sharedData().removeObserver(self, forKeyPath: "hasLogin")
        }
    }
}
