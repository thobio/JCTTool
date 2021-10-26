//
//  File.swift
//  
//
//  Created by Thobio Joseph on 26/10/21.
//

import Foundation

public struct ResourceGet<T>{
    let url:URL
    let parse: (Data) -> T?
}
public struct ResourcePost<T>{
    let url:URL
    let parameter:[String:Any]
    let parse: (Data) -> T?
}

public final class APIWebService {
    
    public func load<T>(resource:ResourceGet<T>,completion:@escaping(T?)->()){
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let data = data {
                completion(resource.parse(data))
            }else{
                completion(nil)
            }
        }.resume()
    }
    
    public func loadPost<T>(resource:ResourcePost<T>,completion:@escaping(T?)->()){
        
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let data = data {
                completion(resource.parse(data))
            }else{
                completion(nil)
            }
        }.resume()
    }
}
