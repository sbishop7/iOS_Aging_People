//
//  ViewController.swift
//  Aging_People
//
//  Created by Seth Bishop on 7/10/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let people = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
        
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = "\(Int(arc4random_uniform(90)) + 5) years old"
        
        return cell
    }
    
}
