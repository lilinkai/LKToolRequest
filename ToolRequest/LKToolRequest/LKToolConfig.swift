//
//  LKToolConfig.swift
//  ToolRequest
//
//  Created by lilinkainew on 2016/12/6.
//  Copyright © 2016年 lilinkainew. All rights reserved.
//

import Foundation

/// 请求工具类配置
class LKToolConfig:LKParamerParse{
    
    /// 解析参数
    ///
    /// - Parameter paramer: 收到的参数字典
    /// - Returns: 返回拼接好的url
    static func paramerParse(paramer: [String : Any]) -> String {
        
        if paramer.isEmpty {
            return ""
        }
        
        let sortKeys = Array(paramer.keys).sorted()
        
        var paramerStr = "?"
        
        for key in sortKeys {
            guard let value = paramer[key] else{
                break
            }
            paramerStr.append("\(key)=\(String(describing: value))&")
        }
        
        print("排序完成的url========\(paramerStr)")
        
        return paramerStr
    }
}
