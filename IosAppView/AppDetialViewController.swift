//
//  AppDetialViewController.swift
//  IosAppView
//
//  Created by 李世文 on 2020/8/9.
//

import UIKit

class AppDetialViewController: UIViewController {

    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appIntroLabel: UILabel!
    
    var name:String!
    var intro:String!
    var imageName:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        appNameLabel.text = name
        appIntroLabel.text = intro
        appImageView.image = imageName
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
