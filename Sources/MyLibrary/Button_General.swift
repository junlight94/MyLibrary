//
//  Button_General.swift
//  
//
//  Created by Junyoung Lee on 2023/06/26.
//

import UIKit
import SnapKit

public class Button_General: UIButton {
    
    enum ButtonStyle {
        case full
        case outline
        case none
    }
    
    var style: ButtonStyle?
    private let progressImage = UIImageView(image: UIImage(named: "WhiteProgress"))
    private var buttonLabel = ""
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(progressImage)
        progressImage.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.width.height.equalTo(30)
        }
        progressImage.isHidden = true
    }
    
    convenience init(_ style: ButtonStyle) {
        self.init(frame: .zero)
        self.style = style
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}
