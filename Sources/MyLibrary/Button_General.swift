//
//  Button_General.swift
//  
//
//  Created by Junyoung Lee on 2023/06/26.
//

import UIKit
import SnapKit

public class Button_General: UIButton {
    
    public enum ButtonStyle {
        case full
        case outline
        case none
    }
    
    var style: ButtonStyle?
    public let progressImage = UIImageView(image: UIImage(named: "ProgressBar", in: Bundle.main, compatibleWith: nil))
    var buttonLabel = ""
    
    /**
     머터리얼 UI 버튼
     - parameters:
        - style: full, outline, none
     */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(progressImage)
        progressImage.snp.makeConstraints { make in
            make.center.equalTo(self)
            make.width.height.equalTo(30)
        }
        progressImage.isHidden = true
    }
    
    
    public convenience init(_ style: ButtonStyle) {
        self.init(frame: .zero)
        self.style = style
        
        guard let url = Bundle.main.url(forResource: "SpoqaHanSansNeo-Light", withExtension: "ttf"),
              let fontDataProvider = CGDataProvider(url: url as CFURL),
              let font = CGFont(fontDataProvider)
                print(font)
        else {
            print("폰트 처리 실패")
            return
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}
