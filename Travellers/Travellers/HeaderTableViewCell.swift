//
//  HeaderTableViewCell.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/5/28.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit
import AVFoundation

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var playButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var sound:AVAudioPlayer = AVAudioPlayer()
    @IBAction func buttonClicked(_ sender: UIButton) {
        let  path = NSURL.fileURL(withPath: Bundle.main.path(forResource: "主礼", ofType: "mp3")!)
        do {
            try sound =  AVAudioPlayer(contentsOf: path)
            if (playButton.isSelected) {
                playButton.isSelected = false
                sound.pause()
                return
            } else {
                playButton.isSelected = true
            }
            sound.prepareToPlay()
            sound.volume = 1.0
            _ = Timer.scheduledTimer(timeInterval: 2,
                                     target:self,selector:#selector(self.play),
                                     userInfo:nil,repeats:false)
            print("played")
        } catch {
            print("error")
            // couldn't load file :(
        }
        
    }
    func  play() {
        if sound.isPlaying {
            sound.pause()
        } else {
            sound.play()
        }
    }
}
