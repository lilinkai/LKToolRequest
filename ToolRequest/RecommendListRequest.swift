//
//  RecommendListRequest.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/6.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

class RecommendListRequest:LKRequestConfig{
    
    //cv=1.1.6&limit=20&page=1&pf=ios&sv=10.0.2
    
    func setPath() -> String {
        return "recommend/all_hot_room"
    }
    
    func setHttpMethod() -> HTTPMethod {
        return HTTPMethod.GET
    }
    
    func setParamer() -> [String : Any] {
        return ["limit": "20",
                "cv": "1.1.6",
                "page": "1",
                "pf": "ios",
                "sv": "10.0.2"]
//        return [:]
    }
    
}
