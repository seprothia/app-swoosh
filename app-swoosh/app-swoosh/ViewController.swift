//
//  ViewController.swift
//  app-swoosh
//
//  Created by Benjamin Wilson on 16/12/2017.
//  Copyright © 2017 Benjamin Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Let's position things. This is doing it programmatically. But this won't refresh the layout when you rotate...lots of manual work here!
        
        // Getting the horizontal centre of the current view/frame to position swoosh, putting it 50 from the top, keeping width and height of swoosh same
//        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//
//        // Make the image the same size and position as the view
//        bgImg.frame = view.frame
        
        
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }


}

