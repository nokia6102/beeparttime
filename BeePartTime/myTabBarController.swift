
import UIKit

private var pTouchAreaEdgeInsets: UIEdgeInsets = .zero

//extension UIButton {
//
//    var touchAreaEdgeInsets: UIEdgeInsets {
//        get {
//            if let value = objc_getAssociatedObject(self, &pTouchAreaEdgeInsets) as? NSValue {
//                var edgeInsets: UIEdgeInsets = .zero
//                value.getValue(&edgeInsets)
//                return edgeInsets
//            }
//            else {
//                return .zero
//            }
//        }
//        set(newValue) {
//            var newValueCopy = newValue
//            let objCType = NSValue(uiEdgeInsets: .zero).objCType
//            let value = NSValue(&newValueCopy, withObjCType: objCType)
//            objc_setAssociatedObject(self, &pTouchAreaEdgeInsets, value, .OBJC_ASSOCIATION_RETAIN)
//        }
//    }
//
//    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
//        if UIEdgeInsetsEqualToEdgeInsets(self.touchAreaEdgeInsets, .zero) || !self.isEnabled || self.isHidden {
//            return super.point(inside: point, with: event)
//        }
//
//        let relativeFrame = self.bounds
//        let hitFrame = UIEdgeInsetsInsetRect(relativeFrame, self.touchAreaEdgeInsets)
//
//        return hitFrame.contains(point)
//    }
//}


class myTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UIImage(named: "bee") != nil {
            self.addCenterButton(withImage: #imageLiteral(resourceName: "bee"), highlightImage: #imageLiteral(resourceName: "bee"))
        }
    

    }
    
    
    
    
    @objc func handleTouchTabbarCenter(sender : UIButton)
    {
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            self.selectedViewController = self.viewControllers?[Int(i)]
        }
    }
    
    func addCenterButton(withImage buttonImage : UIImage, highlightImage: UIImage) {
        
        let paddingBottom : CGFloat = 50.0
        
        let button = UIButton(type: .custom)
        button.autoresizingMask = [.flexibleRightMargin, .flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin]
        button.frame = CGRect(x: 0.0, y: 0.0, width: buttonImage.size.width / 2.0, height: buttonImage.size.height / 2.0)
        button.setBackgroundImage(buttonImage, for: .normal)
        button.setBackgroundImage(highlightImage, for: .highlighted)
  
//        button.touchAreaEdgeInsets = UIEdgeInsets(top: -10 , left: -10 , bottom: -10, right: -10)
        
        let vrectBound = self.view.bounds
        let vxx = vrectBound.midX
        let vyy = self.view.bounds.size.height

        button.center = CGPoint(x: vxx, y: vyy - paddingBottom - 30)
        
                button.addTarget(self, action: #selector(handleTouchTabbarCenter), for: .touchUpInside)
                self.view.addSubview(button)
                self.view.bringSubview(toFront: button)
        

        
        if let count = self.tabBar.items?.count
        {
            let i = floor(Double(count / 2))
            let item = self.tabBar.items![Int(i)]
            item.title = "即時定位"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
