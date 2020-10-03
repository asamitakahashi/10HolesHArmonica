//
//  ViewController.swift
//  10 Holes Harmonica
//
//  Created by user on 2020/09/21.
//  Copyright © 2020 asamin.t. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!

    //ハモニカimageの上のボタン
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    
    //ハモニカimageの2段上のボタン
    @IBOutlet weak var HighBbuttonh8: UIButton!
    @IBOutlet weak var HighButton9: UIButton!
    @IBOutlet weak var HighBbutton10: UIButton!
    
    //ハモニカimageの下のボタン
    @IBOutlet weak var underbutton1: UIButton!
    @IBOutlet weak var underbutton2: UIButton!
    @IBOutlet weak var underbutton3: UIButton!
    @IBOutlet weak var underbutton4: UIButton!
    @IBOutlet weak var underbutton5: UIButton!
    @IBOutlet weak var underbutton6: UIButton!
    @IBOutlet weak var underbutton7: UIButton!
    @IBOutlet weak var underbutton8: UIButton!
    @IBOutlet weak var underbutton9: UIButton!
    @IBOutlet weak var underbutton10: UIButton!
    
    //ハモニカimageの2段下のボタン
    @IBOutlet weak var bendbutton1: UIButton!
    @IBOutlet weak var bendbutton2: UIButton!
    @IBOutlet weak var bendbutton3: UIButton!
    @IBOutlet weak var bendbutton4: UIButton!
    @IBOutlet weak var bendbutton5: UIButton!
    @IBOutlet weak var bendbutton6: UIButton!
    

    //鍵盤Key Borad imageの白鍵ボタン
    @IBOutlet weak var KBbuttonC1: UIButton!
    @IBOutlet weak var KBbuttonD1: UIButton!
    @IBOutlet weak var KBbuttonE1: UIButton!
    @IBOutlet weak var KBbuttonF1: UIButton!
    @IBOutlet weak var KBbuttonG1: UIButton!
    @IBOutlet weak var KBbuttonA1: UIButton!
    @IBOutlet weak var KBbuttonB1: UIButton!
    
    @IBOutlet weak var KBbuttonC2: UIButton!
    @IBOutlet weak var KBbuttonD2: UIButton!
    @IBOutlet weak var KBbuttonE2: UIButton!
    @IBOutlet weak var KBbuttonF2: UIButton!
    @IBOutlet weak var KBbuttonG2: UIButton!
    @IBOutlet weak var KBbuttonA2: UIButton!
    @IBOutlet weak var KBbuttonB2: UIButton!
    @IBOutlet weak var KBbuttonC3: UIButton!
    @IBOutlet weak var KBbuttonD3: UIButton!
    @IBOutlet weak var KBbuttonE3: UIButton!
    @IBOutlet weak var KBbuttonF3: UIButton!
    @IBOutlet weak var KBbuttonG3: UIButton!
    @IBOutlet weak var KBbuttonA3: UIButton!
    @IBOutlet weak var KBbuttonB3: UIButton!
    
    @IBOutlet weak var KBbuttonC4: UIButton!
    @IBOutlet weak var KBbuttonD4: UIButton!
    @IBOutlet weak var KBbuttonE4: UIButton!
    @IBOutlet weak var KBbuttonF4: UIButton!
    
    //鍵盤Key Board image　の黒鍵ボタン
    @IBOutlet weak var BKBbuttonDb1: UIButton!
    @IBOutlet weak var BKBbuttonEb1: UIButton!
    @IBOutlet weak var BKBbuttonFS1: UIButton!
    @IBOutlet weak var BKBbuttonAb1: UIButton!
    @IBOutlet weak var BKBbuttonBb1: UIButton!
    
    @IBOutlet weak var BKBbuttonDb2: UIButton!
    @IBOutlet weak var BKBbuttonEb2: UIButton!
    @IBOutlet weak var BKBbuttonFS2: UIButton!
    @IBOutlet weak var BKBbuttonAb2: UIButton!
    @IBOutlet weak var BKBbuttonBb2: UIButton!
    
    @IBOutlet weak var BKBbuttonDb3: UIButton!
    @IBOutlet weak var BKBbuttonEb3: UIButton!
    @IBOutlet weak var BKBbuttonFS3: UIButton!
    @IBOutlet weak var BKBbuttonAb3: UIButton!
    @IBOutlet weak var BKBbuttonBb3: UIButton!
    
    @IBOutlet weak var BKBbuttonDb4: UIButton!
    @IBOutlet weak var BKBbuttonEb4: UIButton!
    @IBOutlet weak var BKBbuttonFS4: UIButton!
    
    @IBOutlet var ScaleC: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 再生する audio ファイルのパスを取得
        let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
        let audioUrl = URL(fileURLWithPath: audioPath)
                
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
    }
    
    // ボタンがタップされた時の処理
    
    @IBAction func button(_ sender: Any) {
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
             let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
             let audioUrl = URL(fileURLWithPath: audioPath)
             self.audioPlayer = try? AVAudioPlayer(contentsOf: audioUrl)
            button1.setTitle("①", for: UIControl.State())
            KBbuttonC1.setTitle("C", for: UIControl.State())
        }
        else{
            audioPlayer.play()
            button1.setTitle("❶", for: UIControl.State())
            KBbuttonC1.setTitle("❶", for: UIControl.State())
        }
    }
    
    //カラーサークルのボタンが押された時のアクション
    @IBAction func C(_ sender: Any) {
        if ( button1.backgroundColor == UIColor.init(red: 1.0, green: 0.5, blue: 0.5, alpha: 0.5) ){
            button1.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        }
        else{
            button1.backgroundColor = UIColor.init(red: 1.0, green: 0.5, blue: 0.5, alpha: 0.5)
        }
    }
}
