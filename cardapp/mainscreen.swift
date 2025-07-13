//
//  bolhu.swift
//  bolhu
//
//  Created by MacBook Pro on 21/06/2025.
//

import UIKit

class bolhu: UIViewController {

    let cardviewimage  = UIImageView()
    let stopbutton     = CWbuttons(backgroundColor: .systemRed, title: "Stop",systemimagename: "stop.fill")
    let resetbutton   = CWbuttons(backgroundColor: .systemBlue, title: "Reset",systemimagename: "arrow.trianglehead.clockwise")
    let rulesbutton    = CWbuttons(backgroundColor: .systemGreen, title: "Rules",systemimagename: "list.bullet")
    
    var cards:[UIImage] = CardDeck.allvalues
    var timer:Timer!
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        cardviewimage.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    @objc func stoptimer(){
        timer.invalidate()
    }
    @objc func resettime(){
        stoptimer()
        startTimer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configUI()
        startTimer()
    }
    
    func configUI(){
        configuiimageview()
        configstopbutton()
        configresetbutton()
        configrulesbutton()
    }
    func configuiimageview() {
        view.addSubview(cardviewimage)
        cardviewimage.translatesAutoresizingMaskIntoConstraints = false
        cardviewimage.image = UIImage(named: "AS")

        NSLayoutConstraint.activate([
            cardviewimage.widthAnchor.constraint(equalToConstant: 250),
            cardviewimage.heightAnchor.constraint(equalToConstant: 350),
            cardviewimage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardviewimage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configstopbutton(){
        view.addSubview(stopbutton)
        stopbutton.addTarget(self, action: #selector(stoptimer), for: .touchUpInside)
        NSLayoutConstraint.activate([
            
            stopbutton.widthAnchor.constraint(equalToConstant: 250),
            stopbutton.heightAnchor.constraint(equalToConstant: 50),
            stopbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopbutton.topAnchor.constraint(equalTo: cardviewimage.bottomAnchor, constant: 30)
            
        ])
    }

    func configresetbutton(){
        view.addSubview(resetbutton)
        resetbutton.addTarget(self, action: #selector(resettime), for: .touchUpInside)
        NSLayoutConstraint.activate([
            resetbutton.widthAnchor.constraint(equalToConstant: 115),
            resetbutton.heightAnchor.constraint(equalToConstant: 50),
            resetbutton.leadingAnchor.constraint(equalTo: stopbutton.leadingAnchor),
            resetbutton.topAnchor.constraint(equalTo: stopbutton.bottomAnchor, constant: 20)
            
            ])
    }
    
    func configrulesbutton(){
        view.addSubview(rulesbutton)
        rulesbutton.addTarget(self, action: #selector(rulestransition), for: .touchUpInside)
        NSLayoutConstraint.activate([
            rulesbutton.widthAnchor.constraint(equalToConstant: 115),
            rulesbutton.heightAnchor.constraint(equalToConstant: 50),
            rulesbutton.trailingAnchor.constraint(equalTo: stopbutton.trailingAnchor),
            rulesbutton.topAnchor.constraint(equalTo: stopbutton.bottomAnchor, constant: 20)
            ])
    }
    @objc func rulestransition(){
        present(rulesscreen(), animated: true)
    }

}
