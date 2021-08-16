//
//  ViewController.swift
//  contacttableview
//
//  Created by monish ghutke on 11/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableview : UITableView!
    
    let names = [
        ["Apple","Orang","Banana","Pear"],
        ["BMW","FARARI","AVENGER"],
        ["SANGRIYA BUILDING"]
    
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableview.delegate = self
        tableview.dataSource = self
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300))
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300))
        //hi this is new comment
        footer.backgroundColor = .gray
        header.backgroundColor = .blue
        tableview.tableHeaderView = header
        tableview.tableFooterView = footer
                            
    
        
    }

}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
    
}

extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        cell.backgroundColor = .green
        
        return cell
    }
}

 
