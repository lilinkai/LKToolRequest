//
//  LKToolRequest.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/6.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

/// 网络请求工具类
class LKToolRequest:LKRequestClient {
    
    func setHost() -> String {
        return "http://api.feiyun.tv/api/"
    }
    
    func sendRequest<T: LKRequestConfig>(request: T, handler: @escaping (Any?, URL) -> Void) {
        
        //请求域名
        let host = setHost()
        
        //请求地址
        let path = request.setPath()
        
        //请求方式
        let method = request.setHttpMethod()
        
        //请求参数
        let paramerStr = LKToolConfig.paramerParse(paramer: request.setParamer())
        
        let urlObj = URL(string: host.appending(path).appending(paramerStr))!
   
        var requestObj = URLRequest(url: urlObj)
        
        requestObj.httpMethod = method.rawValue
        
        let dataTask = URLSession.shared.dataTask(with: requestObj,
                                                  completionHandler: { (data, response, error) in
                                                    
                                                    guard let dataObj = data else{
                                                        return
                                                    }
                                                    
                                                    handler(dataObj, urlObj)
                                                    print(dataObj)

        })
        
        dataTask.resume()
    }
    
}
