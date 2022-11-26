//
//  APIViewModel.swift
//  Cadastre.ru
//
//  Created by gleba on 16.11.2022.
//

import Foundation

class APIParser{
    func getData(){
        let url = "https://api.cadastre.ru/v1/"
        let query = "news"
        var request = URLRequest(url: URL(string: url+query)!)
        request.httpMethod = "GET"
        request.setValue("jdfvS33fs9FEi93j1Lj", forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request){
            (data,response,error) in
            if error == nil && data != nil{
                let decoder = JSONDecoder()
                do{
                    let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .fragmentsAllowed)
                    print(jsonData)
                }
            }
        }
        task.resume()
    }
}
