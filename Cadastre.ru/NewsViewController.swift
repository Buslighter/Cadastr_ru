//
//  ViewController.swift
//  Cadastre.ru
//
//  Created by gleba on 16.11.2022.
//

import UIKit

class NewsViewController: UIViewController {
    let APIVM = APIParser()
    override func viewDidLoad() {
        super.viewDidLoad()
        APIVM.getData()
    }



extension NewsViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsTableViewCell
        
        return cell
    }
    
    
}
