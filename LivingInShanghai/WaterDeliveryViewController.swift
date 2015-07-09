//
//  WaterDeliveryViewController.swift
//  LivingInShanghai
//
//  Created by 成玮 on 15/7/8.
//  Copyright (c) 2015年 anthousing. All rights reserved.
//

import UIKit

class WaterDeliveryViewController: UIViewController {
    @IBOutlet weak var count1: UILabel!
    @IBOutlet weak var count2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeValue1(sender: UIStepper) {
        count1.text = Int(sender.value).description
    }
    
    @IBAction func changValue2(sender: UIStepper) {
        count2.text = Int(sender.value).description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
