//
//  tom.swift
//  media
//
//  Created by Prem Kumar on 4/10/19.
//  Copyright © 2019 Prem Kumar. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
class tom: UIViewController {

//%%%%%%%%%%%%%%%%%%%%%%%%% Creating Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    var audio : AVAudioPlayer!
    var audioTwo: AVAudioPlayer!
    
    @IBOutlet weak var center: UIImageView!
    var angryImages: [UIImage] = [UIImage(named: "cat_angry0000.png")!,UIImage(named: "cat_angry0001.png")!,UIImage(named: "cat_angry0002.png")!,UIImage(named: "cat_angry0003.png")!,UIImage(named: "cat_angry0004.png")!,UIImage(named: "cat_angry0005.png")!,UIImage(named: "cat_angry0006.png")!,UIImage(named: "cat_angry0007.png")!,UIImage(named: "cat_angry0008.png")!,UIImage(named: "cat_angry0009.png")!,UIImage(named: "cat_angry0010.png")!,UIImage(named: "cat_angry0011.png")!,UIImage(named: "cat_angry0012.png")!,UIImage(named: "cat_angry0013.png")!,UIImage(named: "cat_angry0014.png")!,UIImage(named: "cat_angry0015.png")!,UIImage(named: "cat_angry0016.png")!,UIImage(named: "cat_angry0017.png")!,UIImage(named: "cat_angry0018.png")!,UIImage(named: "cat_angry0019.png")!,UIImage(named: "cat_angry0020.png")!,UIImage(named: "cat_angry0021.png")!,UIImage(named: "cat_angry0022.png")!,UIImage(named: "cat_angry0023.png")!,UIImage(named: "cat_angry0024.png")!,UIImage(named: "cat_angry0025.png")!]
    var blinkImages: [UIImage] = [UIImage(named: "cat_blink0000.png")!,UIImage(named: "cat_blink0001.png")!,UIImage(named: "cat_blink0002.png")!]
    var cymbalImages: [UIImage] = [UIImage(named: "cat_cymbal0000.png")!,UIImage(named: "cat_cymbal0001.png")!,UIImage(named: "cat_cymbal0002.png")!,UIImage(named: "cat_cymbal0003.png")!,UIImage(named: "cat_cymbal0004.png")!,UIImage(named: "cat_cymbal0005.png")!,UIImage(named: "cat_cymbal0006.png")!,UIImage(named: "cat_cymbal0007.png")!,UIImage(named: "cat_cymbal0008.png")!,UIImage(named: "cat_cymbal0009.png")!,UIImage(named: "cat_cymbal0010.png")!,UIImage(named: "cat_cymbal0011.png")!,UIImage(named: "cat_cymbal0012.png")!,]
    var drinkImages: [UIImage] = [UIImage(named: "cat_drink0000.png")!,UIImage(named: "cat_drink0001.png")!,UIImage(named: "cat_drink0002.png")!,UIImage(named: "cat_drink0003.png")!,UIImage(named: "cat_drink0004.png")!,UIImage(named: "cat_drink0005.png")!,UIImage(named: "cat_drink0006.png")!,UIImage(named: "cat_drink0007.png")!,UIImage(named: "cat_drink0008.png")!,UIImage(named: "cat_drink0009.png")!,UIImage(named: "cat_drink0010.png")!,UIImage(named: "cat_drink0011.png")!,UIImage(named: "cat_drink0012.png")!,UIImage(named: "cat_drink0013.png")!,UIImage(named: "cat_drink0014.png")!,UIImage(named: "cat_drink0015.png")!,UIImage(named: "cat_drink0016.png")!,UIImage(named: "cat_drink0017.png")!,UIImage(named: "cat_drink0018.png")!,UIImage(named: "cat_drink0019.png")!,UIImage(named: "cat_drink0020.png")!,UIImage(named: "cat_drink0021.png")!,UIImage(named: "cat_drink0022.png")!,UIImage(named: "cat_drink0023.png")!,UIImage(named: "cat_drink0024.png")!,UIImage(named: "cat_drink0025.png")!,UIImage(named: "cat_drink0026.png")!,UIImage(named: "cat_drink0027.png")!,UIImage(named: "cat_drink0028.png")!,UIImage(named: "cat_drink0029.png")!,UIImage(named: "cat_drink0030.png")!,UIImage(named: "cat_drink0031.png")!,UIImage(named: "cat_drink0032.png")!,UIImage(named: "cat_drink0033.png")!,UIImage(named: "cat_drink0034.png")!,UIImage(named: "cat_drink0035.png")!,UIImage(named: "cat_drink0036.png")!,UIImage(named: "cat_drink0037.png")!,UIImage(named: "cat_drink0038.png")!,UIImage(named: "cat_drink0039.png")!,UIImage(named: "cat_drink0040.png")!,UIImage(named: "cat_drink0041.png")!,UIImage(named: "cat_drink0042.png")!,UIImage(named: "cat_drink0043.png")!,UIImage(named: "cat_drink0044.png")!,UIImage(named: "cat_drink0045.png")!,UIImage(named: "cat_drink0046.png")!,UIImage(named: "cat_drink0047.png")!,UIImage(named: "cat_drink0048.png")!,UIImage(named: "cat_drink0049.png")!,UIImage(named: "cat_drink0050.png")!,UIImage(named: "cat_drink0051.png")!,UIImage(named: "cat_drink0052.png")!,UIImage(named: "cat_drink0053.png")!,UIImage(named: "cat_drink0054.png")!,UIImage(named: "cat_drink0055.png")!,UIImage(named: "cat_drink0056.png")!,UIImage(named: "cat_drink0057.png")!,UIImage(named: "cat_drink0058.png")!,UIImage(named: "cat_drink0059.png")!,UIImage(named: "cat_drink0060.png")!,UIImage(named: "cat_drink0061.png")!,UIImage(named: "cat_drink0062.png")!,UIImage(named: "cat_drink0063.png")!,UIImage(named: "cat_drink0064.png")!,UIImage(named: "cat_drink0065.png")!,UIImage(named: "cat_drink0066.png")!,UIImage(named: "cat_drink0067.png")!,UIImage(named: "cat_drink0068.png")!,UIImage(named: "cat_drink0069.png")!,UIImage(named: "cat_drink0070.png")!,UIImage(named: "cat_drink0071.png")!,UIImage(named: "cat_drink0072.png")!,UIImage(named: "cat_drink0073.png")!,UIImage(named: "cat_drink0074.png")!,UIImage(named: "cat_drink0075.png")!,UIImage(named: "cat_drink0076.png")!,UIImage(named: "cat_drink0077.png")!,UIImage(named: "cat_drink0078.png")!,UIImage(named: "cat_drink0079.png")!,UIImage(named: "cat_drink0080.png")!]
    var eatImages: [UIImage] = [UIImage(named: "cat_eat0000.png")!,UIImage(named: "cat_eat0001.png")!,UIImage(named: "cat_eat0002.png")!,UIImage(named: "cat_eat0003.png")!,UIImage(named: "cat_eat0004.png")!,UIImage(named: "cat_eat0005.png")!,UIImage(named: "cat_eat0006.png")!,UIImage(named: "cat_eat0007.png")!,UIImage(named: "cat_eat0008.png")!,UIImage(named: "cat_eat0009.png")!,UIImage(named: "cat_eat0010.png")!,UIImage(named: "cat_eat0011.png")!,UIImage(named: "cat_eat0012.png")!,UIImage(named: "cat_eat0013.png")!,UIImage(named: "cat_eat0014.png")!,UIImage(named: "cat_eat0015.png")!,UIImage(named: "cat_eat0016.png")!,UIImage(named: "cat_eat0017.png")!,UIImage(named: "cat_eat0018.png")!,UIImage(named: "cat_eat0019.png")!,UIImage(named: "cat_eat0020.png")!,UIImage(named: "cat_eat0021.png")!,UIImage(named: "cat_eat0022.png")!,UIImage(named: "cat_eat0023.png")!,UIImage(named: "cat_eat0024.png")!,UIImage(named: "cat_eat0025.png")!,UIImage(named: "cat_eat0026.png")!,UIImage(named: "cat_eat0027.png")!,UIImage(named: "cat_eat0028.png")!,UIImage(named: "cat_eat0029.png")!,UIImage(named: "cat_eat0030.png")!,UIImage(named: "cat_eat0031.png")!,UIImage(named: "cat_eat0032.png")!,UIImage(named: "cat_eat0033.png")!,UIImage(named: "cat_eat0034.png")!,UIImage(named: "cat_eat0035.png")!,UIImage(named: "cat_eat0036.png")!,UIImage(named: "cat_eat0037.png")!,UIImage(named: "cat_eat0038.png")!,UIImage(named: "cat_eat0039.png")!]
    var fartImages: [UIImage] = [UIImage(named: "cat_fart0000.png")!,UIImage(named: "cat_fart0001.png")!,UIImage(named: "cat_fart0002.png")!,UIImage(named: "cat_fart0003.png")!,UIImage(named: "cat_fart0004.png")!,UIImage(named: "cat_fart0005.png")!,UIImage(named: "cat_fart0006.png")!,UIImage(named: "cat_fart0007.png")!,UIImage(named: "cat_fart0008.png")!,UIImage(named: "cat_fart0009.png")!,UIImage(named: "cat_fart0010.png")!,UIImage(named: "cat_fart0011.png")!,UIImage(named: "cat_fart0012.png")!,UIImage(named: "cat_fart0013.png")!,UIImage(named: "cat_fart0014.png")!,UIImage(named: "cat_fart0015.png")!,UIImage(named: "cat_fart0016.png")!,UIImage(named: "cat_fart0017.png")!,UIImage(named: "cat_fart0018.png")!,UIImage(named: "cat_fart0019.png")!,UIImage(named: "cat_fart0020.png")!,UIImage(named: "cat_fart0021.png")!,UIImage(named: "cat_fart0022.png")!,UIImage(named: "cat_fart0023.png")!,UIImage(named: "cat_fart0024.png")!,UIImage(named: "cat_fart0025.png")!,UIImage(named: "cat_fart0026.png")!,UIImage(named: "cat_fart0027.png")!]
    var zehImages: [UIImage] =  [UIImage(named: "cat_zeh0000.png")!,UIImage(named: "cat_zeh0001.png")!,UIImage(named: "cat_zeh0002.png")!,UIImage(named: "cat_zeh0003.png")!,UIImage(named: "cat_zeh0004.png")!,UIImage(named: "cat_zeh0005.png")!,UIImage(named: "cat_zeh0006.png")!,UIImage(named: "cat_zeh0007.png")!,UIImage(named: "cat_zeh0008.png")!,UIImage(named: "cat_zeh0009.png")!,UIImage(named: "cat_zeh0000.png")!,UIImage(named: "cat_zeh0010.png")!,UIImage(named: "cat_zeh0011.png")!,UIImage(named: "cat_zeh0012.png")!,UIImage(named: "cat_zeh0013.png")!,UIImage(named: "cat_zeh0014.png")!,UIImage(named: "cat_zeh0015.png")!,UIImage(named: "cat_zeh0016.png")!,UIImage(named: "cat_zeh0017.png")!,UIImage(named: "cat_zeh0018.png")!,UIImage(named: "cat_zeh0019.png")!,UIImage(named: "cat_zeh0020.png")!,UIImage(named: "cat_zeh0021.png")!,UIImage(named: "cat_zeh0022.png")!,UIImage(named: "cat_zeh0023.png")!,UIImage(named: "cat_zeh0024.png")!,UIImage(named: "cat_zeh0025.png")!,UIImage(named: "cat_zeh0026.png")!,UIImage(named: "cat_zeh0027.png")!,UIImage(named: "cat_zeh0028.png")!,UIImage(named: "cat_zeh0029.png")!,UIImage(named: "cat_zeh0030.png")!]
    var talkImages: [UIImage] = [UIImage(named: "cat_talk0000.png")!,UIImage(named: "cat_talk0001.png")!,UIImage(named: "cat_talk0002.png")!,UIImage(named: "cat_talk0003.png")!,UIImage(named: "cat_talk0004.png")!,UIImage(named: "cat_talk0005.png")!,UIImage(named: "cat_talk0006.png")!,UIImage(named: "cat_talk0007.png")!,UIImage(named: "cat_talk0008.png")!,UIImage(named: "cat_talk0009.png")!,UIImage(named: "cat_talk0000.png")!,UIImage(named: "cat_talk0010.png")!,UIImage(named: "cat_talk0011.png")!,UIImage(named: "cat_talk0012.png")!,UIImage(named: "cat_talk0013.png")!,UIImage(named: "cat_talk0014.png")!,UIImage(named: "cat_talk0015.png")!]
    var stomachImages: [UIImage] = [UIImage(named: "cat_stomach0000.png")!,UIImage(named: "cat_stomach0001.png")!,UIImage(named: "cat_stomach0002.png")!,UIImage(named: "cat_stomach0003.png")!,UIImage(named: "cat_stomach0004.png")!,UIImage(named: "cat_stomach0005.png")!,UIImage(named: "cat_stomach0006.png")!,UIImage(named: "cat_stomach0007.png")!,UIImage(named: "cat_stomach0008.png")!,UIImage(named: "cat_stomach0009.png")!,UIImage(named: "cat_stomach0000.png")!,UIImage(named: "cat_stomach0010.png")!,UIImage(named: "cat_stomach0011.png")!,UIImage(named: "cat_stomach0012.png")!,UIImage(named: "cat_stomach0013.png")!,UIImage(named: "cat_stomach0014.png")!,UIImage(named: "cat_stomach0015.png")!,UIImage(named: "cat_stomach0016.png")!,UIImage(named: "cat_stomach0017.png")!,UIImage(named: "cat_stomach0018.png")!,UIImage(named: "cat_stomach0019.png")!,UIImage(named: "cat_stomach0020.png")!,UIImage(named: "cat_stomach0021.png")!,UIImage(named: "cat_stomach0022.png")!,UIImage(named: "cat_stomach0023.png")!,UIImage(named: "cat_stomach0024.png")!,UIImage(named: "cat_stomach0025.png")!,UIImage(named: "cat_stomach0026.png")!,UIImage(named: "cat_stomach0027.png")!,UIImage(named: "cat_stomach0028.png")!,UIImage(named: "cat_stomach0029.png")!,UIImage(named: "cat_stomach0030.png")!,UIImage(named: "cat_stomach0031.png")!,UIImage(named: "cat_stomach0032.png")!,UIImage(named: "cat_stomach0033.png")!]
    var sneezeImages: [UIImage] = [UIImage(named: "cat_sneeze0000.png")!,UIImage(named: "cat_sneeze0001.png")!,UIImage(named: "cat_sneeze0002.png")!,UIImage(named: "cat_sneeze0003.png")!,UIImage(named: "cat_sneeze0004.png")!,UIImage(named: "cat_sneeze0005.png")!,UIImage(named: "cat_sneeze0006.png")!,UIImage(named: "cat_sneeze0007.png")!,UIImage(named: "cat_sneeze0008.png")!,UIImage(named: "cat_sneeze0009.png")!,UIImage(named: "cat_sneeze0000.png")!,UIImage(named: "cat_sneeze0010.png")!,UIImage(named: "cat_sneeze0011.png")!,UIImage(named: "cat_sneeze0012.png")!,UIImage(named: "cat_sneeze0013.png")!]
    var scratchImages: [UIImage] = [UIImage(named: "cat_scratch0000.png")!,UIImage(named: "cat_scratch0001.png")!,UIImage(named: "cat_scratch0002.png")!,UIImage(named: "cat_scratch0003.png")!,UIImage(named: "cat_scratch0004.png")!,UIImage(named: "cat_scratch0005.png")!,UIImage(named: "cat_scratch0006.png")!,UIImage(named: "cat_scratch0007.png")!,UIImage(named: "cat_scratch0008.png")!,UIImage(named: "cat_scratch0009.png")!,UIImage(named: "cat_scratch0000.png")!,UIImage(named: "cat_scratch0010.png")!,UIImage(named: "cat_scratch0011.png")!,UIImage(named: "cat_scratch0012.png")!,UIImage(named: "cat_scratch0013.png")!,UIImage(named: "cat_scratch0014.png")!,UIImage(named: "cat_scratch0015.png")!,UIImage(named: "cat_scratch0016.png")!,UIImage(named: "cat_scratch0017.png")!,UIImage(named: "cat_scratch0018.png")!,UIImage(named: "cat_scratch0019.png")!,UIImage(named: "cat_scratch0020.png")!,UIImage(named: "cat_scratch0021.png")!,UIImage(named: "cat_scratch0022.png")!,UIImage(named: "cat_scratch0023.png")!,UIImage(named: "cat_scratch0024.png")!,UIImage(named: "cat_scratch0025.png")!,UIImage(named: "cat_scratch0026.png")!,UIImage(named: "cat_scratch0027.png")!,UIImage(named: "cat_scratch0028.png")!,UIImage(named: "cat_scratch0029.png")!,UIImage(named: "cat_scratch0030.png")!,UIImage(named: "cat_scratch0031.png")!,UIImage(named: "cat_scratch0032.png")!,UIImage(named: "cat_scratch0033.png")!,UIImage(named: "cat_scratch0034.png")!,UIImage(named: "cat_scratch0035.png")!,UIImage(named: "cat_scratch0036.png")!,UIImage(named: "cat_scratch0037.png")!,UIImage(named: "cat_scratch0038.png")!,UIImage(named: "cat_scratch0039.png")!,UIImage(named: "cat_scratch0040.png")!,UIImage(named: "cat_scratch0041.png")!,UIImage(named: "cat_scratch0042.png")!,UIImage(named: "cat_scratch0043.png")!,UIImage(named: "cat_scratch0044.png")!,UIImage(named: "cat_scratch0045.png")!,UIImage(named: "cat_scratch0046.png")!,UIImage(named: "cat_scratch0047.png")!,UIImage(named: "cat_scratch0048.png")!,UIImage(named: "cat_scratch0049.png")!,UIImage(named: "cat_scratch0050.png")!,UIImage(named: "cat_scratch0051.png")!,UIImage(named: "cat_scratch0052.png")!,UIImage(named: "cat_scratch0053.png")!,UIImage(named: "cat_scratch0054.png")!,UIImage(named: "cat_scratch0055.png")!]
    var pieImages: [UIImage] = [UIImage(named: "cat_pie0000.png")!,UIImage(named: "cat_pie0001.png")!,UIImage(named: "cat_pie0002.png")!,UIImage(named: "cat_pie0003.png")!,UIImage(named: "cat_pie0004.png")!,UIImage(named: "cat_pie0005.png")!,UIImage(named: "cat_pie0006.png")!,UIImage(named: "cat_pie0007.png")!,UIImage(named: "cat_pie0008.png")!,UIImage(named: "cat_pie0009.png")!,UIImage(named: "cat_pie0000.png")!,UIImage(named: "cat_pie0010.png")!,UIImage(named: "cat_pie0011.png")!,UIImage(named: "cat_pie0012.png")!,UIImage(named: "cat_pie0013.png")!,UIImage(named: "cat_pie0014.png")!,UIImage(named: "cat_pie0015.png")!,UIImage(named: "cat_pie0016.png")!,UIImage(named: "cat_pie0017.png")!,UIImage(named: "cat_pie0018.png")!,UIImage(named: "cat_pie0019.png")!,UIImage(named: "cat_pie0020.png")!,UIImage(named: "cat_pie0021.png")!,UIImage(named: "cat_pie0022.png")!]
    var listen1Images: [UIImage] = [UIImage(named: "cat_listen0000.png")!,UIImage(named: "cat_listen0001.png")!,UIImage(named: "cat_listen0002.png")!,UIImage(named: "cat_listen0003.png")!,UIImage(named: "cat_listen0004.png")!,UIImage(named: "cat_listen0005.png")!,UIImage(named: "cat_listen0006.png")!,UIImage(named: "cat_listen0007.png")!,UIImage(named: "cat_listen0008.png")!,UIImage(named: "cat_listen0009.png")!,UIImage(named: "cat_listen0000.png")!,UIImage(named: "cat_listen0010.png")!,UIImage(named: "cat_listen0011.png")!]
    var knockoutImages: [UIImage] = [UIImage(named: "cat_knockout0000.png")!,UIImage(named: "cat_knockout0001.png")!,UIImage(named: "cat_knockout0002.png")!,UIImage(named: "cat_knockout0003.png")!,UIImage(named: "cat_knockout0004.png")!,UIImage(named: "cat_knockout0005.png")!,UIImage(named: "cat_knockout0006.png")!,UIImage(named: "cat_knockout0007.png")!,UIImage(named: "cat_knockout0008.png")!,UIImage(named: "cat_knockout0009.png")!,UIImage(named: "cat_knockout0000.png")!,UIImage(named: "cat_knockout0010.png")!,UIImage(named: "cat_knockout0011.png")!,UIImage(named: "cat_knockout0012.png")!,UIImage(named: "cat_knockout0013.png")!,UIImage(named: "cat_knockout0014.png")!,UIImage(named: "cat_knockout0015.png")!,UIImage(named: "cat_knockout0016.png")!,UIImage(named: "cat_knockout0017.png")!,UIImage(named: "cat_knockout0018.png")!,UIImage(named: "cat_knockout0019.png")!,UIImage(named: "cat_knockout0020.png")!,UIImage(named: "cat_knockout0021.png")!,UIImage(named: "cat_knockout0022.png")!,UIImage(named: "cat_knockout0023.png")!,UIImage(named: "cat_knockout0024.png")!,UIImage(named: "cat_knockout0025.png")!,UIImage(named: "cat_knockout0026.png")!,UIImage(named: "cat_knockout0027.png")!,UIImage(named: "cat_knockout0028.png")!,UIImage(named: "cat_knockout0029.png")!,UIImage(named: "cat_knockout0030.png")!,UIImage(named: "cat_knockout0031.png")!,UIImage(named: "cat_knockout0032.png")!,UIImage(named: "cat_knockout0033.png")!,UIImage(named: "cat_knockout0034.png")!,UIImage(named: "cat_knockout0035.png")!,UIImage(named: "cat_knockout0036.png")!,UIImage(named: "cat_knockout0037.png")!,UIImage(named: "cat_knockout0038.png")!,UIImage(named: "cat_knockout0039.png")!,UIImage(named: "cat_knockout0040.png")!,UIImage(named: "cat_knockout0041.png")!,UIImage(named: "cat_knockout0042.png")!,UIImage(named: "cat_knockout0043.png")!,UIImage(named: "cat_knockout0044.png")!,UIImage(named: "cat_knockout0045.png")!,UIImage(named: "cat_knockout0046.png")!,UIImage(named: "cat_knockout0047.png")!,UIImage(named: "cat_knockout0048.png")!,UIImage(named: "cat_knockout0049.png")!,UIImage(named: "cat_knockout0050.png")!,UIImage(named: "cat_knockout0051.png")!,UIImage(named: "cat_knockout0052.png")!,UIImage(named: "cat_knockout0053.png")!,UIImage(named: "cat_knockout0054.png")!,UIImage(named: "cat_knockout0055.png")!,UIImage(named: "cat_knockout0056.png")!,UIImage(named: "cat_knockout0057.png")!,UIImage(named: "cat_knockout0058.png")!,UIImage(named: "cat_knockout0059.png")!,UIImage(named: "cat_knockout0060.png")!,UIImage(named: "cat_knockout0061.png")!,UIImage(named: "cat_knockout0062.png")!,UIImage(named: "cat_knockout0063.png")!,UIImage(named: "cat_knockout0064.png")!,UIImage(named: "cat_knockout0065.png")!,UIImage(named: "cat_knockout0066.png")!,UIImage(named: "cat_knockout0067.png")!,UIImage(named: "cat_knockout0068.png")!,UIImage(named: "cat_knockout0069.png")!,UIImage(named: "cat_knockout0070.png")!,UIImage(named: "cat_knockout0071.png")!,UIImage(named: "cat_knockout0072.png")!,UIImage(named: "cat_knockout0073.png")!,UIImage(named: "cat_knockout0074.png")!,UIImage(named: "cat_knockout0075.png")!,UIImage(named: "cat_knockout0076.png")!,UIImage(named: "cat_knockout0077.png")!,UIImage(named: "cat_knockout0078.png")!,UIImage(named: "cat_knockout0079.png")!,UIImage(named: "cat_knockout0080.png")!]
    var happyImages: [UIImage] = [UIImage(named: "cat_happy0000.png")!,UIImage(named: "cat_happy0001.png")!,UIImage(named: "cat_happy0002.png")!,UIImage(named: "cat_happy0003.png")!,UIImage(named: "cat_happy0004.png")!,UIImage(named: "cat_happy0005.png")!,UIImage(named: "cat_happy0006.png")!,UIImage(named: "cat_happy0007.png")!,UIImage(named: "cat_happy0008.png")!,UIImage(named: "cat_happy0009.png")!,UIImage(named: "cat_happy0000.png")!,UIImage(named: "cat_happy0010.png")!,UIImage(named: "cat_happy0011.png")!,UIImage(named: "cat_happy0012.png")!,UIImage(named: "cat_happy0013.png")!,UIImage(named: "cat_happy0014.png")!,UIImage(named: "cat_happy0015.png")!,UIImage(named: "cat_happy0016.png")!,UIImage(named: "cat_happy0017.png")!,UIImage(named: "cat_happy0018.png")!,UIImage(named: "cat_happy0019.png")!,UIImage(named: "cat_happy0020.png")!,UIImage(named: "cat_happy0021.png")!,UIImage(named: "cat_happy0022.png")!,UIImage(named: "cat_happy0023.png")!,UIImage(named: "cat_happy0024.png")!,UIImage(named: "cat_happy0025.png")!,UIImage(named: "cat_happy0026.png")!,UIImage(named: "cat_happy0027.png")!,UIImage(named: "cat_happy0028.png")!]
    
    
    var happySimpleImages:[UIImage] = [UIImage(named:"cat_happy_simple0000.png")!,UIImage(named: "cat_happy_simple0001.png")!,UIImage(named: "cat_happy_simple0002.png")!,UIImage(named: "cat_happy_simple0003.png")!,UIImage(named: "cat_happy_simple0004.png")!,UIImage(named: "cat_happy_simple0005.png")!,UIImage(named: "cat_happy_simple0006.png")!,UIImage(named: "cat_happy_simple0007.png")!,UIImage(named: "cat_happy_simple0008.png")!,UIImage(named: "cat_happy_simple0009.png")!,UIImage(named: "cat_happy_simple0010.png")!,UIImage(named: "cat_happy_simple0011.png")!,UIImage(named: "cat_happy_simple0012.png")!,UIImage(named: "cat_happy_simple0013.png")!,UIImage(named: "cat_happy_simple0014.png")!,UIImage(named: "cat_happy_simple0015.png")!,UIImage(named: "cat_happy_simple0016.png")!,UIImage(named: "cat_happy_simple0017.png")!,UIImage(named: "cat_happy_simple0018.png")!,UIImage(named: "cat_happy_simple0019.png")!,UIImage(named: "cat_happy_simple0020.png")!,UIImage(named: "cat_happy_simple0021.png")!,UIImage(named: "cat_happy_simple0022.png")!,UIImage(named: "cat_happy_simple0023.png")!,UIImage(named: "cat_happy_simple0024.png")!]
    var footRightImages: [UIImage] = [UIImage(named: "cat_foot_right0000.png")!,UIImage(named: "cat_foot_right0001.png")!,UIImage(named: "cat_foot_right0002.png")!,UIImage(named: "cat_foot_right0003.png")!,UIImage(named: "cat_foot_right0004.png")!,UIImage(named: "cat_foot_right0005.png")!,UIImage(named: "cat_foot_right0006.png")!,UIImage(named: "cat_foot_right0007.png")!,UIImage(named: "cat_foot_right0008.png")!,UIImage(named: "cat_foot_right0009.png")!,UIImage(named: "cat_foot_right0000.png")!,UIImage(named: "cat_foot_right0010.png")!,UIImage(named: "cat_foot_right0011.png")!,UIImage(named: "cat_foot_right0012.png")!,UIImage(named: "cat_foot_right0013.png")!,UIImage(named: "cat_foot_right0014.png")!,UIImage(named: "cat_foot_right0015.png")!,UIImage(named: "cat_foot_right0016.png")!,UIImage(named: "cat_foot_right0017.png")!,UIImage(named: "cat_foot_right0018.png")!,UIImage(named: "cat_foot_right0019.png")!,UIImage(named: "cat_foot_right0020.png")!,UIImage(named: "cat_foot_right0021.png")!,UIImage(named: "cat_foot_right0022.png")!,UIImage(named: "cat_foot_right0023.png")!,UIImage(named: "cat_foot_right0024.png")!,UIImage(named: "cat_foot_right0025.png")!,UIImage(named: "cat_foot_right0026.png")!,UIImage(named: "cat_foot_right0027.png")!,UIImage(named: "cat_foot_right0028.png")!,UIImage(named: "cat_foot_right0029.png")!]
    var footLeftImages: [UIImage] = [UIImage(named: "cat_foot_left0000.png")!,UIImage(named: "cat_foot_left0001.png")!,UIImage(named: "cat_foot_left0002.png")!,UIImage(named: "cat_foot_left0003.png")!,UIImage(named: "cat_foot_left0004.png")!,UIImage(named: "cat_foot_left0005.png")!,UIImage(named: "cat_foot_left0006.png")!,UIImage(named: "cat_foot_left0007.png")!,UIImage(named: "cat_foot_left0008.png")!,UIImage(named: "cat_foot_left0009.png")!,UIImage(named: "cat_foot_left0000.png")!,UIImage(named: "cat_foot_left0010.png")!,UIImage(named: "cat_foot_left0011.png")!,UIImage(named: "cat_foot_left0012.png")!,UIImage(named: "cat_foot_left0013.png")!,UIImage(named: "cat_foot_left0014.png")!,UIImage(named: "cat_foot_left0015.png")!,UIImage(named: "cat_foot_left0016.png")!,UIImage(named: "cat_foot_left0017.png")!,UIImage(named: "cat_foot_left0018.png")!,UIImage(named: "cat_foot_left0019.png")!,UIImage(named: "cat_foot_left0020.png")!,UIImage(named: "cat_foot_left0021.png")!,UIImage(named: "cat_foot_left0022.png")!,UIImage(named: "cat_foot_left0023.png")!,UIImage(named: "cat_foot_left0024.png")!,UIImage(named: "cat_foot_left0025.png")!,UIImage(named: "cat_foot_left0026.png")!,UIImage(named: "cat_foot_left0027.png")!,UIImage(named: "cat_foot_left0028.png")!,UIImage(named: "cat_foot_left0029.png")!]
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Angry Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catAngry(_ sender: UIButton) {
        center.animationImages = angryImages
        center.animationRepeatCount = 1
        center.animationDuration = 3
        
        center.startAnimating()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (timer) in
            do {
                self.audio = try AVAudioPlayer(data: (NSDataAsset(name: "angry_8000")?.data)!, fileTypeHint: "wav")
                self.audio.volume = 1.0
            } catch {
                print("Error playing angry_8000.wav")
            }
            self.audio?.play()
        })
    }
    
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Blink Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catBlinking(_ sender: UIButton) {
        center.animationImages = blinkImages
        center.animationDuration = 2
        center.animationRepeatCount = 1
        center.startAnimating()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Cymbal Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catCymbal(_ sender: UIButton) {
        center.animationImages = cymbalImages
        center.animationDuration = 1
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "cymbal_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Drink Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func CatDrinking(_ sender: UIButton) {
        center.animationImages = drinkImages
        center.animationDuration = 4
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_drink_milk_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Eat Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catEating(_ sender: UIButton) {
        center.animationImages = eatImages
        center.animationDuration = 3
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_eat_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Zeh Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catZeh(_ sender: UIButton) {
        center.animationImages = zehImages
        center.animationDuration = 3
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_yawn3_11a_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing p_yawn3_11a_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Talk Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func CatTalking(_ sender: UIButton) {
        center.animationImages = talkImages
        center.animationDuration = 1
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_meuu_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    //%%%%%%%%%%%%%%%%%%% method to show Stomach Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catStomach(_ sender: UIButton) {
        center.animationImages = stomachImages
        center.animationDuration = 2
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_belly1_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    //%%%%%%%%%%%%%%%%%%% method to show Sneeze Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catSneeze(_ sender: UIButton) {
        center.animationImages = sneezeImages
        center.animationDuration = 1
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_sneeze_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Scratch Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catScratch(_ sender: UIButton) {
        center.animationImages = scratchImages
        center.animationDuration = 4
        center.animationRepeatCount = 1
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (timer) in
            do {
                self.audio = try AVAudioPlayer(data: (NSDataAsset(name: "tafel_kratzen_8000")?.data)!, fileTypeHint: "wav")
                self.audio.volume = 1.0
                self.audio?.play()
            } catch {
                print("Error playing angry_8000.wav")
            }
        })
        
        center.startAnimating()
        
    }
    
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Pie Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catPieing(_ sender: UIButton) {
        center.animationImages = pieImages
        center.animationDuration = 2
        center.animationRepeatCount = 1
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (timer) in
            do {
                self.audio = try AVAudioPlayer(data: (NSDataAsset(name: "splat1_8000")?.data)!, fileTypeHint: "wav")
                self.audio.volume = 1.0
                self.audio?.play()
            } catch {
                print("Error playing splat1_8000.wav")
            }
        })
        
        center.startAnimating();
    }
    
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Listen Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catListening(_ sender: UIButton) {
        center.animationImages = listen1Images
        center.animationDuration = 2
        center.animationRepeatCount = 1
        center.startAnimating()
    }
    
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show KnockOut Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func CatKnockOut(_ sender: UIButton) {
        center.animationImages = knockoutImages
        center.animationDuration = 4
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "slap1_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
            
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating()
        audio.play()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (timer) in
            do {
                self.audioTwo = try AVAudioPlayer(data: (NSDataAsset(name: "p_stars2s_8000")?.data)!, fileTypeHint: "wav")
                self.audioTwo.volume = 1.0
                
            } catch {
                print("Error playing angry_8000.wav")
            }
            
            self.audioTwo.play()
        })
        
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Fart Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catFarting(_ sender: UIButton) {
        center.animationImages = fartImages
        center.animationDuration = 2
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "fart001_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Footleft Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func catFootLeft(_ sender: UIButton) {
        center.animationImages = footLeftImages
        center.animationDuration = 3
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_foot3_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show FootRight Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func onCatFootRight(_ sender: UIButton) {
        center.animationImages = footRightImages
        center.animationDuration = 3
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "p_foot4_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Happy Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func happyCat(_ sender: UIButton) {
        center.animationImages = happyImages
        center.animationDuration = 3
        center.animationRepeatCount = 1
        
        do {
            audio = try AVAudioPlayer(data: (NSDataAsset(name: "purr_8000")?.data)!, fileTypeHint: "wav")
            audio.volume = 1.0
        } catch {
            print("Error playing angry_8000.wav")
        }
        
        center.startAnimating(); audio?.play()
    }
    
    
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%% method to show Simple Happy Animation %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    @IBAction func tomSimpleHappy(_ sender: Any) {
    

center.animationImages = happySimpleImages
center.animationDuration = 3
center.animationRepeatCount = 1

do {
    audio = try AVAudioPlayer(data: (NSDataAsset(name: "purr_8000")?.data)!, fileTypeHint: "wav")
    audio.volume = 1.0
} catch {
    print("Error playing angry_8000.wav")
}

center.startAnimating(); audio?.play()
}
}
