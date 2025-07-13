//
//  CWbuttons.swift
//  bolhu
//
//  Created by MacBook Pro on 12/07/2025.
//

import UIKit

class CWbuttons: UIButton {

    override init(frame:CGRect){
        super.init(frame: frame)
        
    }
    
    required init?(coder:NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    init(backgroundColor : UIColor,title:String, systemimagename:String){
        super.init(frame: .zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseBackgroundColor = backgroundColor
        configuration?.baseForegroundColor = backgroundColor
        configuration?.cornerStyle = .medium
        
        configuration?.image=UIImage(systemName: systemimagename)
        configuration?.imagePlacement = .trailing
        configuration?.imagePadding   = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
    
  

}
