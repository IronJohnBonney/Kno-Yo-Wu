//
//  WuDetailViewController.swift
//  Kno-Yo-Wu
//
//  Created by Stephen Looney on 6/23/16.
//  Copyright © 2016 SpaceBoat Development LLC. All rights reserved.
//

import Foundation
import UIKit

class WuDetailViewController:UIViewController {
    
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var bgImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!
    
    @IBOutlet var headerContainerView: UIView!
    @IBOutlet var detailContainerView: UIView!
    
    let selectedMember:WuTang
    
    init (withMember:WuTang) {
        selectedMember = withMember
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action:Selector("closeView:")))
        headerContainerView.hidden = false
        detailContainerView.hidden = false
    }
    
    override func viewWillAppear(animated: Bool) {
        bgImageView.image = UIImage.init(named: selectedMember.image)
        bgImageView.contentMode = .ScaleAspectFill
        nameLabel.text = selectedMember.alias
        descriptionTextView.text = selectedMember.description
        headerLabel.text = selectedMember.name
        ageLabel.text = "Age: \(selectedMember.age)"
    }
    
    func closeView(tap:UITapGestureRecognizer) {
        headerContainerView.hidden = true
        detailContainerView.hidden = true
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
