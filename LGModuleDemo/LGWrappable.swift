//
//  LGWrappable.swift
//  LGModuleDemo
//
//  Created by liangang zhan on 2024/4/27.
//

import Foundation

struct LG<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

protocol LGWrappable {
//    static var lg: LG<Self>.Type { get }
//    var lg: LG<Self> { get }
}

extension LGWrappable {
    static var lg: LG<Self>.Type { LG<Self>.self }
    var lg: LG<Self> { LG(self) }
}
