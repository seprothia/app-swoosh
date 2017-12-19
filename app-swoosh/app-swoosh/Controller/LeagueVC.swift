//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Benjamin Wilson on 19/12/2017.
//  Copyright © 2017 Benjamin Wilson. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    // Don't build logic into the IBActions - put it into a function
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBOutlet weak var nextBtn: BorderButton!
    // weak means it will free up the memory when go off this view
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    // override means don't need the view controller's implementation of it. Don't need to super
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player // handing off player to next VC
        }
        
        // if let sequence: will try and run the statement, and if succeeds will execute the code
        // as? saying grab segue.destination
        // so could have 'else if let' for other VCs if multiple options
        // prepare for segue lets us do something before it loads. Is always called before viewDidLoad called on destination view controller
    }

}







