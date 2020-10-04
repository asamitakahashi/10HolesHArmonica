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
    
    
    //Key Boradのスケール　アウトレットコレクション
    @IBOutlet var ScaleC: [UIButton]!
    @IBOutlet var ScaleDb: [UIButton]!
    @IBOutlet var ScaleD: [UIButton]!
    @IBOutlet var ScaleEb: [UIButton]!
    @IBOutlet var ScaleE: [UIButton]!
    @IBOutlet var ScaleF: [UIButton]!
    @IBOutlet var ScaleGb: [UIButton]!
    @IBOutlet var ScaleG: [UIButton]!
    @IBOutlet var ScaleAb: [UIButton]!
    @IBOutlet var ScaleA: [UIButton]!
    @IBOutlet var ScaleBb: [UIButton]!
    
    @IBOutlet var Clearbutton: [UIButton]!
    @IBOutlet var BKClearButton: [UIButton]!
    
    //カラーサークルのハーモニカキーボタン
    @IBOutlet weak var HC: UIButton!
    @IBOutlet weak var HG: UIButton!
    @IBOutlet weak var HD: UIButton!
    @IBOutlet weak var HA: UIButton!
    @IBOutlet weak var HE: UIButton!
    @IBOutlet weak var HB: UIButton!
    @IBOutlet weak var HGb: UIButton!
    @IBOutlet weak var HDb: UIButton!
    @IBOutlet weak var HAb: UIButton!
    @IBOutlet weak var HEb: UIButton!
    @IBOutlet weak var HBb: UIButton!
    @IBOutlet weak var HF: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
  //       再生する audio ファイルのパスを取得
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
//    @IBAction func button1(_ sender: Any) {
//        if ( audioPlayer.isPlaying ){
 //           audioPlayer.stop()
//            let audioPath = Bundle.main.path(forResource: "ド", ofType:"m4a")!
  //          let audioUrl = URL(fileURLWithPath: audioPath)
  //          self.audioPlayer = try? AVAudioPlayer(contentsOf: audioUrl)
  //         button1.setTitle("①", for: UIControl.State())
   //         KBbuttonC1.setTitle("C", for: UIControl.State())
   //     }
   //     else{
    //        audioPlayer.play()
//        button1.setTitle("❶", for: UIControl.State())
 //           KBbuttonC1.setTitle("❶", for: UIControl.State())
//        }
//    }
    //カラーサークルのボタンが押された時のアクション
 // @IBAction func Clearbutton(_ sender: Any) {
//  for buttonClear in Clearbutton {
//    buttonClear.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
 // }
  //}
    //@IBAction func BKClearButton(_ sender: Any) {
     //   for BKbuttonClear in BKClearButton {
  //  BKbuttonClear.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
   // }
    //}
    
    //①曲キー選択　使用スケールを鍵盤上で可視化
//     @IBAction func C(_ sender: Any) {
//        for button in ScaleC {
//             button.backgroundColor = #colorLiteral(red: 1, green: 0.4932718873, blue: // // 0.4739984274, alpha: 1)
//         }
//     }
//     @IBAction func G(_ sender: Any) {
//         for buttonG in ScaleG {
//             buttonG.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
//                 //UIColor.init(red: 240.0, green: 160.0, blue: 110.0, alpha: 0.0)
//         }
//     }
    
//     @IBAction func D(_ sender: Any) {
//         for button in ScaleD {
//             button.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
//         }
//     }
//    @IBAction func A(_ sender: Any) {
//     for button in ScaleA {
//    button.backgroundColor = #colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1)
//    }
//   }
//     @IBAction func E(_ sender: Any) {
//         for button in ScaleE {
//             button.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
//         }
//     }
//     @IBAction func B(_ sender: Any) {
//         for button in ScaleBb{
//             button.backgroundColor = #colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)
//         }
//     }
//     @IBAction func Gb(_ sender: Any) {
//         for button in ScaleGb {
//             button.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
//         }
//    }
//    @IBAction func Db(_ sender: Any) {
//         for button in ScaleDb {
 //            button.backgroundColor = #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)
//        }
//     }
//     @IBAction func Ab(_ sender: Any) {
//         for button in ScaleAb {
//             button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
//         }
//     }
//     @IBAction func Eb(_ sender: Any) {
//         for button in ScaleEb {
//             button.backgroundColor = #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)
//         }
//     }
//     @IBAction func Bb(_ sender: Any) {
//         for button in ScaleBb{
//             button.backgroundColor = #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1)
//         }
 //    }
//     @IBAction func F(_ sender: Any) {
//         for button in ScaleF {
//             button.backgroundColor = #colorLiteral(red: 1, green: 0.5409764051, blue: // 0.8473142982, alpha: 1)
//         }
//     }
    //②ハーモニカキー選択　ポジションの表記と音配列の変更　予定
    

//     @IBAction func HC(_ sender: Any) {
        //ポジションの変更
//         HC.setTitle("Ⅰ　1st", for: UIControl.State())
//         HG.setTitle("V 2nd", for: UIControl.State())
//         HD.setTitle("Ⅱ 3rd", for: UIControl.State())
//         HA.setTitle("Ⅵ 4th", for: UIControl.State())
//         HE.setTitle("Ⅲ 5th", for: UIControl.State())
//         HF.setTitle("Ⅳ 12th", for: UIControl.State())
        //鍵盤表記の変更
 //       KBbuttonC1.setTitle("C1", for: UIControl.State())
  //       KBbuttonD1.setTitle("D①", for: UIControl.State())
//         KBbuttonE1.setTitle("E2", for: UIControl.State())
//         KBbuttonF1.setTitle("F②B", for: UIControl.State())
//         KBbuttonG1.setTitle("G②2", for: UIControl.State())
//         KBbuttonA1.setTitle("A③B", for: UIControl.State())
//         KBbuttonB1.setTitle("B③", for: UIControl.State())
        
 
    // if ( ScaleC.backgroundColor == UIColor.init(red: 1.0, green: 0.5, blue: 0.5, alpha: 0.5) ){
    //     ScaleC.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
    //}
    // else{
    //     ScaleC.backgroundColor = UIColor.init(red: 1.0, green: 0.5, blue: 0.5, alpha: 0.5)
    // }
    //}
}

