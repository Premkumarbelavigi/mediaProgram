//
//  masterpiece.swift
//  media
//
//  Created by Prem Kumar on 4/9/19.
//  Copyright © 2019 Prem Kumar. All rights reserved.
//



import UIKit
import AVFoundation
import AVKit


class masterpiece: UIViewController {

   
    //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    
    var AVPVC = AVPlayerViewController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
    }
    
    
    
    
  //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audioPlay(_ sender: Any) {
        
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/Attention%20Please.mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 700, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
        
        
    }
    
 //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audio2(_ sender: Any) {
        
        
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/Annange%20Love%20Aagidhe.mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 700, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
        
    }
    
     //%%%%%%%%%%%%%%%%%%%%%%%%% Creating Event Handler for Audio play %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func audio3(_ sender: Any) {
        AVPVC = AVPlayerViewController()
        AVPVC.player  = AVPlayer(url: URL(string: "https://raw.githubusercontent.com/Premkumarbelavigi/songs/master/KD%20No%201.mp3")!)
        AVPVC.view.frame = CGRect(x: 10, y: 700, width: 400, height: 50)
        view.addSubview(AVPVC.view)
        AVPVC.player!.play()
        
    }
}
