//
//  gajakesari.swift
//  media
//
//  Created by Prem Kumar on 4/9/19.
//  Copyright © 2019 Prem Kumar. All rights reserved.
//

import UIKit
import YoutubeDirectLinkExtractor
import AVFoundation
import AVKit

class gajakesari: UIViewController {

    //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    var AVPVC:AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Video play Same VC  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
    @IBAction func gajakesari(_ sender: Any) {
    
    
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/gajakesari/master/Gajakesari%20Teaser%20%20Yash%20Amulya.mp4")!)
        present(AVPVC,animated: true)
        AVPVC.player!.play()
    }
    
    
    //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Video play another VC %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func playSameVC(_ sender: Any) {
        
        
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/gajakesari/master/Gajakesari%20Teaser%20%20Yash%20Amulya.mp4")!)
        AVPVC.view.frame = CGRect(x: 10, y: 600, width: 400, height: 200)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
        
    }
    
    
    
}
