//
//  LKRequestParse.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/5.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

protocol LKParse {
    
    static func parse(data: Data) -> Self?
    
}
