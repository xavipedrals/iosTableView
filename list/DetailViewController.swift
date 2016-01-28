//
//  DetailViewController.swift
//  list
//
//  Created by mac33 on 28/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailText: UILabel!
    
    var record:(String, String)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail"
        detailImage.image = UIImage(named: record.1)
        detailText.text = record.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
