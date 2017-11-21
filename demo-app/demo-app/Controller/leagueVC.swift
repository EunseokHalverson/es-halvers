//
//  leagueVC.swift
//  demo-app
//
//  Created by Eunseok on 2017. 11. 21..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

class leagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "skillVC", sender: self)
    }
    

}
