//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Sean Acres on 5/28/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = colors[indexPath.row].name

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorDetailVC = segue.destination as? ColorDetailViewController,
            let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let cellColor = colors[indexPath.row]
        
        colorDetailVC.cellColor = cellColor
    }
    
}
