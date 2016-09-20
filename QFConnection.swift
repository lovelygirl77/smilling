//
//  QFConnection.swift
//  cLoveFree
//
//  Created by huanghailong on 16/7/12.
//  Copyright © 2016年 huanghailong. All rights reserved.
//

import UIKit

class QFConnection: NSObject {

//MARK: 属性
    //记录网址
    var urlStr: String
    
    //记录下载的数据
    let downloadData = NSMutableData()
    
    //记录网络连接器
    var connection: NSURLConnection?
    
    //记录回调对象和回调方法
    var target: AnyObject?
    var action: Selector?
    
    //记录网络请求是否成功
    var isSuccess = false
    
    //特殊标记
    var tag = 0
    
//MARK: 方法
    //构造
    init(urlStr: String, target: AnyObject, action: Selector, tag: Int = 0) {
        self.urlStr = urlStr
        self.target = target
        self.action = action
        self.tag = tag
        print(urlStr)
    }
    
    //启动网络请求
    func start() -> Void {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        let request = NSURLRequest.init(URL: NSURL.init(string: urlStr)!)
        connection = NSURLConnection.init(request: request, delegate: self)
    }
    
    //中断网络请求
    func stop() -> Void {
        connection?.cancel()
    }
    
    //析构
    deinit {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
}

//MARK: NSURLConnection回调方法
extension QFConnection: NSURLConnectionDataDelegate {
    
    func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse) {
        downloadData.length = 0
    }
    //数据传输中
    func connection(connection: NSURLConnection, didReceiveData data: NSData) {
        downloadData.appendData(data)
    }
    //数据下载完成
    func connectionDidFinishLoading(connection: NSURLConnection) {
        isSuccess = true
        target?.performSelector(action!, withObject: self)
    }
    
    func connection(connection: NSURLConnection, didFailWithError error: NSError) {
        isSuccess = false
        target?.performSelector(action!, withObject: self)
    }
}











