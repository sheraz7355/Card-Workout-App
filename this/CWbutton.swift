//
//  CWbutton.swift
//  this
//
//  Created by MacBook Pro on 21/07/2025.
//

import UIKit

class CWbutton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(Backgroundcolor : UIColor , title : String){
        super.init(frame: .zero)
        configuration = .filled()
        configuration?.title = title
        configuration?.baseBackgroundColor = Backgroundcolor
        configuration?.baseForegroundColor = .white
        configuration?.cornerStyle = .large
        translatesAutoresizingMaskIntoConstraints = false
        
    }
   
}
