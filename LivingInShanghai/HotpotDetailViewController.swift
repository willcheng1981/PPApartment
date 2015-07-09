

import UIKit

class HotpotDetailViewController: UIViewController {
    @IBOutlet weak var introPageControl: UIPageControl!
    @IBOutlet weak var introView: ShopIntroView!
    @IBOutlet weak var introView2: ShopIntroView!
    
    var shopSeqNo: Int = 0
    var shopDetailInfo:ShopDetailInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let shopInfo = allHotpots[shopSeqNo]!
    
        (navigationItem as? MainNavigationItem)?.initItem(self)
        navigationItem.title = shopInfo.name
        
        //init intro
        shopDetailInfo = allHotpotDetailInfo[shopSeqNo]
        introPageControl.numberOfPages = shopDetailInfo.intros.count
        
        introView.setImage(shopDetailInfo.intros[0].picUrl)
        introView.setIntro(shopDetailInfo.intros[0].introInfo)
        introView2.hide()
    }
    
    func showIntroPage(isSwipRight: Bool) {
        if introView.isSliding || introView2.isSliding {
            return
        }
        
        if isSwipRight == true {
            introPageControl.currentPage = (introPageControl.currentPage + 1) %  introPageControl.numberOfPages
        }
        else {
            introPageControl.currentPage = ((introPageControl.currentPage + introPageControl.numberOfPages) - 1) %  introPageControl.numberOfPages
        }
        
        
        let nowHideView = introView.isShowen ? introView2 : introView
        
        nowHideView.setImage(shopDetailInfo.intros[introPageControl.currentPage].picUrl)
        nowHideView.setIntro(shopDetailInfo.intros[introPageControl.currentPage].introInfo)
        
        if isSwipRight == true {
            introView.swipToRight()
            introView2.swipToRight()
        }
        else {
            introView.swipToLeft()
            introView2.swipToLeft()
        }
    }
    
    @IBAction func swipOnIntro(sender: UISwipeGestureRecognizer) {
        
        var isSwipRight = true
        
        switch (sender.direction)
        {
        case UISwipeGestureRecognizerDirection.Left:
            isSwipRight = false
        case UISwipeGestureRecognizerDirection.Right:
            isSwipRight = true
        default:
            return
        }
        
        showIntroPage(isSwipRight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
