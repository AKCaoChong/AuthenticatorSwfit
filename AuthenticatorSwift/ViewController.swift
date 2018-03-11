//
//  ViewController.swift
//  AuthenticatorSwift
//
//  Created by thundersoft on 2018/3/2.
//  Copyright © 2018年 thundersoft. All rights reserved.
//

import UIKit
import OneTimePassword
import Base32

class ViewController: UIViewController {

    var textLabel = UILabel()
    var timeLabel = UILabel()
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
        self.addTimer()
    }

    func setUI() {
        textLabel = UILabel.init(frame: CGRect.init(x: 100, y: 100, width: 200, height: 40))
        timeLabel = UILabel.init(frame: CGRect.init(x: 100, y: 200, width: 200, height: 40))
        self.view.addSubview(textLabel)
        self.view.addSubview(timeLabel)
    }
    
    @objc func createToken() {
        let data = MF_Base32Codec.data(fromBase32String: "helloworld")
        
        let token = OTPToken.init(type: .timer, secret: data, name: "", issuer: "")
        token?.digits = 6
        token?.period = 60
        token?.algorithm = .SHA1
        let counter = Date().timeIntervalSince1970.truncatingRemainder(dividingBy: (token?.period)!)
        let truecounter = lroundf(Float(60 - counter))
        textLabel.text = token?.password
        timeLabel.text = String(truecounter)
        print("\(counter)","\(truecounter)")
       // uint64_t newCounter = (uint64_t)([NSDate date].timeIntervalSince1970 / self.period);
        print(token?.password)
    }
    
    func addTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(createToken), userInfo: nil, repeats: true)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

