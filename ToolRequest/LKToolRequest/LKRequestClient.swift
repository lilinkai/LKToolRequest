//
//  LKRequestClient.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/5.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

protocol LKClient {
    
    func send<T:LKRequest>(_ request: T, handler: @escaping (T.Response?) -> Void)
    
    var host:String { get }
}

struct ToolRequestClient: LKClient {
    
    let host: String = "http://fy.uimg.cn/"
    
    func send<T : LKRequest>(_ request: T, handler: @escaping (T.Response?) -> Void) {
        
        let urlObj = URL(string: host.appending(request.path))!
        
        var requestObj = URLRequest(url: urlObj)
        
        requestObj.httpMethod = request.method.rawValue
        
        let dataTask = URLSession.shared.dataTask(with: requestObj,
                                                  completionHandler: { (data, response, error) in
                                                    
                                                    guard let dataObj = data else{
                                                        return
                                                    }
                                                    
                                                    guard let result = T.Response.parse(data: dataObj) else{
                                                        handler(nil)
                                                        return
                                                    }
                                                    
                                                    handler(result)
                                                    print(result)
                                                    
        })
        
        dataTask.resume()
    }
}
