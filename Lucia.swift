//
//  Lucia.swift
//  media
//
//  Created by Prem Kumar on 4/8/19.
//  Copyright © 2019 Prem Kumar. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


//%%%%%%%%%%%%%%%%%%%%%%%%% Creating Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

class Lucia: UIViewController {

  var AVPVC = AVPlayerViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
       
    }
    

  //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audioPlay(_ sender: Any) {
    
    
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/Thinbeda%20Bonus%20Track.mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 600, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
        
    }
    
   //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audio2(_ sender: Any) {
    
    
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/Jamma%20Jamma.mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 600, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
   
}

     //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audio3(_ sender: Any) {
    
    
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/Helu%20Shiva%20(Kannadamasti.info).mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 600, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
   
}
    }
        
        

