//
//  ViewController.swift
//  Gim Malam Ini
//
//  Created by Wikan Setiaji on 05/05/20.
//  Copyright © 2020 Tim 14. All rights reserved.
//
// wikan yang bener kerjanya
import UIKit
import AVFoundation
import SwiftUI

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var buttonSettings: UIButton!
    @IBOutlet weak var gamesCollectionView: UICollectionView!
    
    var toWhichRoom = ""
    
    enum soundEffectList {
        case enterRoom
        case exitRoom
    }
    
    var timer = Timer()
    let flowLayout = ZoomAndSnapFlowLayout()
    
    var gameListDummy = ["Satu Kata", "Sebut Cepat"]
    var gameDescListDummy = ["Uji chemistry bersama orang terdekatmu!", "wait for next update" ]
    let gameImageListDummy = ["thumbnailIkutRuangan", "thumbnailBuatRuangan"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        gamesCollectionView.backgroundColor = .none
        return gameListDummy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = gamesCollectionView.dequeueReusableCell(withReuseIdentifier: "gamesCell", for: indexPath) as! GamesCollectionViewCell
        cell.gameImage.image = UIImage.init(named: gameImageListDummy[indexPath.row])
        return cell
    }
    
    
    @IBSegueAction func toSwiftUIView(_ coder: NSCoder) -> UIViewController? {
        if toWhichRoom == "guest" {
            return UIHostingController(coder: coder, rootView: RoomInformationView())
        }
        else {
            return UIHostingController(coder: coder, rootView: CreateRoomView())
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath, _ coder: NSCoder) {
        if (indexPath.row == 0){
            let contentView = RoomInformationView()
            let hostingController = UIHostingController(rootView: contentView)
            if let window = self.view.window {
                window.rootViewController = hostingController
            }
        }
        else if (indexPath.row == 1){
            let contentView = CreateRoomView()
            let hostingController = UIHostingController(rootView: contentView)
            if let window = self.view.window {
                window.rootViewController = hostingController
            }
        }
//        playSoundEffect(name: MainViewController.soundEffectList.enterRoom)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSettings.layer.cornerRadius = buttonSettings.frame.width/2
        
        gamesCollectionView.collectionViewLayout = flowLayout
        gamesCollectionView.contentInsetAdjustmentBehavior = .always
    }

//    override func viewDidAppear(_ animated: Bool) {
//        playSoundEffect(name: MainViewController.soundEffectList.exitRoom)
//        SoundPlayer.playSound(soundResource:"Swamp_Walk", soundExtension: "mp3")
//    }
    
//    func playSoundEffect(name: soundEffectList) {
//        if name == .enterRoom{
//            SoundPlayer.playSound(soundResource: "420518__jfrecords__vmax-box", soundExtension: "wav")
//        }
//        else if name == .exitRoom{
//            SoundPlayer.playSound(soundResource: "420517__jfrecords__vopt-box", soundExtension: "wav")
//        }
//    }
//
    
//    @objc func stopBgMusic() {
//        SoundPlayer.stop(soundResource:"Swamp_Walk", soundExtension: "mp3")
//    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

}

