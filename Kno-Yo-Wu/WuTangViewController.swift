//
//  WuTangViewController.swift
//  Kno-Yo-Wu
//
//  Created by Stephen Looney on 6/23/16.
//  Copyright © 2016 SpaceBoat Development LLC. All rights reserved.
//

import Foundation
import UIKit


class WuTangViewController: UIViewController {
    
    @IBOutlet var wuTangScrollView: UIScrollView!
    @IBOutlet var wuLogoImageView: UIImageView!
    
    let members = WuTang.all()
    let transition = PopAnimator()
    var selectedImage:UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            self.view.backgroundColor = UIColor.init(patternImage: UIImage.init(named: "mainBackground")!)
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = self.view.bounds
            blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            
            self.view.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
            self.view.sendSubviewToBack(blurEffectView)
        }
        
        wuLogoImageView.tintColor = UIColor.whiteColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        if wuTangScrollView.subviews.count < members.count {
            wuTangScrollView.viewWithTag(0)?.tag = 1000 //prevent confusion when looking up images
            
            setupList()
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        if let selectedImage = selectedImage {
            selectedImage.hidden = false
        }
    }
    
    func didTapImageView(tap: UITapGestureRecognizer) {
        selectedImage = tap.view as? UIImageView
        
        let index = tap.view!.tag
        let selectedMember = members[index]
        
        
        //present details view controller
        let wuDetail = WuDetailViewController.init(withMember:selectedMember)
        wuDetail.transitioningDelegate = self
        presentViewController(wuDetail, animated: true, completion: {
            self.selectedImage!.hidden = true
        })
        
    
}

    
    func setupList() {
        
        for i in 0 ..< members.count {
            
            //create image view
            let imageView  = UIImageView(image: UIImage(named: members[i].image))
            imageView.tag = i
            imageView.contentMode = .ScaleAspectFill
            imageView.userInteractionEnabled = true
            imageView.layer.cornerRadius = 20.0
            imageView.layer.masksToBounds = true
            wuTangScrollView.addSubview(imageView)
            
            //attach tap detector
            imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("didTapImageView:")))
        }
        
        wuTangScrollView.backgroundColor = UIColor.clearColor()
        positionListItems()
    }
    
    func positionListItems() {
        
        let ratio = view.frame.size.height / view.frame.size.width
        print("ratio:", ratio)
        let itemHeight: CGFloat = wuTangScrollView.frame.height
        let itemWidth: CGFloat = itemHeight / ratio
        
        let horizontalPadding: CGFloat = 10.0
        wuTangScrollView.contentSize = CGSize(
            width: CGFloat(members.count) * (itemWidth + horizontalPadding) + horizontalPadding,
            height:  0)
        print(members)
        for i in 0 ..< members.count {
            let imageView = wuTangScrollView.viewWithTag(i) as! UIImageView
            imageView.frame = CGRect(
                x: CGFloat(i) * itemWidth + CGFloat(i+1) * horizontalPadding, y: 10.0,
                width: itemWidth, height: itemHeight)
            print(i, imageView.frame)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension WuTangViewController: UIViewControllerTransitioningDelegate {
    func animationControllerForPresentedController(
        presented: UIViewController,
        presentingController presenting: UIViewController,
                             sourceController source: UIViewController) ->
        UIViewControllerAnimatedTransitioning? {
            
            transition.originFrame = selectedImage!.superview!.convertRect(selectedImage!.frame, toView: nil)
            transition.presenting = true
            
            return transition
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.presenting = false
        return transition
    }
}