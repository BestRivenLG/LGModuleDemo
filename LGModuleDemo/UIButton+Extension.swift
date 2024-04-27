//
//  UIButton+Extension.swift
//  LGModuleDemo
//
//  Created by liangang zhan on 2024/4/27.
//

import Foundation
import UIKit

extension UIButton: LGWrappable {}

extension LG where Base: UIButton {
    
    func touchArea(_ area: CGFloat) {
        base.touchArea = area
    }
    
    func siteStyle(_ style: ButtonSiteStyle = .default, space: CGFloat = 5) {
        let spacing = space < 0 ? 0 : space
        guard let imgSize = base.imageView?.image?.size, let title = base.titleLabel?.text, let fontSize = base.titleLabel?.font else { return }
        let size = base.intrinsicContentSize
        let titleSizeWidth = size.width - imgSize.width//
        let titleHeight = title.size(withAttributes: [.font: fontSize]).height

        let titleWidth = title.size(withAttributes: [.font: fontSize])
        
        let imgHeight = imgSize.height

        switch style {
        case .default:
            
            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let haltSpace = spacing/2.0

            base.imageEdgeInsets = UIEdgeInsets(top: 0, left: -haltSpace, bottom: 0, right: 0)
            base.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -haltSpace)
            base.contentEdgeInsets = UIEdgeInsets(top: 0, left: haltSpace, bottom: 0, right: haltSpace)
            
        case .imageOnRight:
            if space < 0 { return }
            let haltSpace = spacing/2.0
            let totalWidth = base.intrinsicContentSize.width + haltSpace
            let imageLeft = totalWidth - imgSize.width
            let titleRight = imgSize.width + haltSpace
            base.imageEdgeInsets = UIEdgeInsets(top: 0, left: imageLeft, bottom: 0, right: -imageLeft)
            base.titleEdgeInsets = UIEdgeInsets(top: 0, left: -titleRight, bottom: 0, right: titleRight)
            base.contentEdgeInsets = UIEdgeInsets(top: 0, left: haltSpace, bottom: 0, right: haltSpace)
            
        case .imageOnTop:
            if space < 0 { return }

            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let totalHeight = imgHeight + titleHeight
            let haltSpace = spacing/2.0
            let imagebottom = (totalHeight)/4.0 + haltSpace
            
            let midX = base.intrinsicContentSize.width/2.0
            let imgLeft = midX - imgSize.width/2.0
            let titleRight = imgSize.width/2.0

            base.imageEdgeInsets = UIEdgeInsets(top: -imagebottom, left: imgLeft, bottom: imagebottom, right: -imgLeft)
            base.titleEdgeInsets = UIEdgeInsets(top: imagebottom, left: -titleRight, bottom: -imagebottom, right: titleRight)
            base.contentEdgeInsets = UIEdgeInsets(top: contentTop, left: -titleRight, bottom: contentTop, right: -titleRight)
        case .imageOnBottom:
            
            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let totalHeight = imgHeight + titleHeight
            let haltSpace = spacing/2.0
            let imagebottom = (totalHeight)/4.0 + haltSpace
            
            let midX = base.intrinsicContentSize.width/2.0
            let imgLeft = midX - imgSize.width/2.0
            let titleRight = imgSize.width/2.0

            base.imageEdgeInsets = UIEdgeInsets(top: imagebottom, left: imgLeft, bottom: -imagebottom, right: -imgLeft)
            base.titleEdgeInsets = UIEdgeInsets(top: -imagebottom, left: -titleRight, bottom: imagebottom, right: titleRight)
            base.contentEdgeInsets = UIEdgeInsets(top: contentTop, left: -titleRight, bottom: contentTop, right: -titleRight)
        }
        
        base.layoutIfNeeded()
    }
    

}


enum ButtonSiteStyle {
    case `default`
    case imageOnRight
    case imageOnTop
    case imageOnBottom
}

extension UIButton {
    
    func siteStyle(_ style: ButtonSiteStyle = .default, space: CGFloat = 5) {
        let spacing = space < 0 ? 0 : space
        guard let imgSize = imageView?.image?.size, let title = titleLabel?.text, let fontSize = titleLabel?.font else { return }
        let size = intrinsicContentSize
        let titleSizeWidth = size.width - imgSize.width//
        let titleHeight = title.size(withAttributes: [.font: fontSize]).height

        let titleWidth = title.size(withAttributes: [.font: fontSize])
        
        let imgHeight = imgSize.height

        switch style {
        case .default:
            
            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let haltSpace = spacing/2.0

            imageEdgeInsets = UIEdgeInsets(top: 0, left: -haltSpace, bottom: 0, right: 0)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: -haltSpace)
            contentEdgeInsets = UIEdgeInsets(top: 0, left: haltSpace, bottom: 0, right: haltSpace)
            
        case .imageOnRight:
            if space < 0 { return }
            let haltSpace = spacing/2.0
            let totalWidth = intrinsicContentSize.width + haltSpace
            let imageLeft = totalWidth - imgSize.width
            let titleRight = imgSize.width + haltSpace
            imageEdgeInsets = UIEdgeInsets(top: 0, left: imageLeft, bottom: 0, right: -imageLeft)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -titleRight, bottom: 0, right: titleRight)
            contentEdgeInsets = UIEdgeInsets(top: 0, left: haltSpace, bottom: 0, right: haltSpace)
            
        case .imageOnTop:
            if space < 0 { return }

            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let totalHeight = imgHeight + titleHeight
            let haltSpace = spacing/2.0
            let imagebottom = (totalHeight)/4.0 + haltSpace
            
            let midX = intrinsicContentSize.width/2.0
            let imgLeft = midX - imgSize.width/2.0
            let titleRight = imgSize.width/2.0

            imageEdgeInsets = UIEdgeInsets(top: -imagebottom, left: imgLeft, bottom: imagebottom, right: -imgLeft)
            titleEdgeInsets = UIEdgeInsets(top: imagebottom, left: -titleRight, bottom: -imagebottom, right: titleRight)
            contentEdgeInsets = UIEdgeInsets(top: contentTop, left: -titleRight, bottom: contentTop, right: -titleRight)
        case .imageOnBottom:
            
            let minHeight = min(imgHeight, titleHeight)
            let contentTop = (minHeight + spacing)/2.0
            let totalHeight = imgHeight + titleHeight
            let haltSpace = spacing/2.0
            let imagebottom = (totalHeight)/4.0 + haltSpace
            
            let midX = intrinsicContentSize.width/2.0
            let imgLeft = midX - imgSize.width/2.0
            let titleRight = imgSize.width/2.0

            imageEdgeInsets = UIEdgeInsets(top: imagebottom, left: imgLeft, bottom: -imagebottom, right: -imgLeft)
            titleEdgeInsets = UIEdgeInsets(top: -imagebottom, left: -titleRight, bottom: imagebottom, right: titleRight)
            contentEdgeInsets = UIEdgeInsets(top: contentTop, left: -titleRight, bottom: contentTop, right: -titleRight)
        }
        
        layoutIfNeeded()
    }
    
}

extension UIButton {
    
    private struct AssociatedKeys {
        static var touchArea = 0.0
    }
    
    fileprivate var touchArea: CGFloat {
        get {
            if let value = objc_getAssociatedObject(self, &AssociatedKeys.touchArea) as? CGFloat {
                return value
            } else {
                return 0.0
            }
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.touchArea, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_ASSIGN)
        }
    }

    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let enlargedRect = bounds.inset(by: UIEdgeInsets(top: -touchArea, left: -touchArea, bottom: -touchArea, right: -touchArea))
        return enlargedRect.contains(point)
    }

}

