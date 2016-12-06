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

/// 网络请求配置协议
protocol LKRequestConfig {
    
    //设置网络请求拼装url
    func setPath() -> String
    
    //设置网络请求方式
    func setHttpMethod() -> HTTPMethod
    
    //设置网络请求参数
    func setParamer() -> [String:Any]
    
}

/// 解析请求参数协议
protocol LKParamerParse {
    
    //解析参数
    static func paramerParse(paramer:[String:Any]) -> String
    
}

/// 网络请求连接协议
protocol LKRequestClient {
    
    //请求域名配置
    func setHost() -> String
    
    //发送请求
    func sendRequest<T:LKRequestConfig>(request:T, handler: @escaping (Any?, URL)->Void )
}














