//
//  LKRequestConfig.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/5.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

enum HTTPMethod:String {
    case GET
    case POST
}

protocol LKRequest {
    
    associatedtype Response: LKParse
    
    var path:String { get }
    
    var method:HTTPMethod { get }
    
    var parameter:[String:Any] { get }
    
}
