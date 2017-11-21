//
//  leagueVC.swift
//  demo-app
//
//  Created by Eunseok on 2017. 11. 21..
//  Copyright © 2017년 Eunseok. All rights reserved.
//

import UIKit

class leagueVC: UIViewController {

    var player: Player?
    
    @IBOutlet weak var nextBtn: borderBtn!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }

    @IBAction func nextBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "skillVC", sender: self)
    }
    
    @IBAction func mensClicked(_ sender: Any) {
        selectedBtn(selected: "mens")
    }
    @IBAction func womensClicked(_ sender: Any) {
        selectedBtn(selected: "womens")
    }
    @IBAction func coedClicked(_ sender: Any) {
        selectedBtn(selected: "coed")
    }
    
    func selectedBtn(selected: String){
        player?.desiredLeague = selected
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? skillVC{
            skillVC.player = player
        }
    }
    
}
