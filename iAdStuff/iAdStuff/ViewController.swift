//
//  ViewController.swift
//  iAdStuff
//
//  Created by jhampac on 2/5/16.
//  Copyright © 2016 jhampac. All rights reserved.
//

import iAd
import UIKit

class ViewController: UIViewController, ADBannerViewDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.bannerView!.translatesAutoresizingMaskIntoConstraints = false
        appDelegate.bannerView!.delegate = self
        appDelegate.bannerView!.hidden = true
        view.addSubview(appDelegate.bannerView!)
        
        let viewsDictionary = ["bannerView": appDelegate.bannerView!]
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bannerView]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[bannerView]|", options: [], metrics: nil, views: viewsDictionary))
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!)
    {
        
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!)
    {
        
    }
}

