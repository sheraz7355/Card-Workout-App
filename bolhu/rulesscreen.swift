//
//  rulesscreen.swift
//  bolhu
//
//  Created by MacBook Pro on 13/07/2025.
//

import UIKit

class rulesscreen: UIViewController {
    let rulestitle    = UILabel()
    let rules         = UILabel()
    let exercies      = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view.backgroundColor = .systemBackground
        configtitle()
        configrules()
        configexercies()
    }
    
  func configtitle() {
      view.addSubview(rulestitle)
      rulestitle.translatesAutoresizingMaskIntoConstraints = false
      rulestitle.text = "Rules"
      rulestitle.font = UIFont.systemFont(ofSize: 40, weight: .bold)
      rulestitle.textAlignment = .center
      
      NSLayoutConstraint.activate([
        rulestitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
        rulestitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        rulestitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        
      ])
    }
  
    func configrules() {
        view.addSubview(rules)
        rules.translatesAutoresizingMaskIntoConstraints = false
        rules.text = "The Value of each card represents the number of exercises you do.\n\nJ = 11, Q = 12, K = 13, A = 14\n\n."
        rules.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        rules.textAlignment = .center
        rules.lineBreakMode = .byWordWrapping
        rules.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rules.topAnchor.constraint(equalTo: rulestitle.bottomAnchor, constant: 25),
            rules.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rules.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            ])
    }
    
    func configexercies() {
        view.addSubview(exercies)
        exercies.translatesAutoresizingMaskIntoConstraints = false
        exercies.text = "♠️ = Pushups\n\n❤️ = Situps\n\n♦️ = Planks\n\n♣️ = Squats "
        exercies.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        exercies.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exercies.topAnchor.constraint(equalTo: rules.bottomAnchor, constant: 25),
            exercies.widthAnchor.constraint(equalToConstant: 250),
            exercies.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
}
