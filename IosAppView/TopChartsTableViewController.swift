//
//  TopChartsTableViewController.swift
//  IosAppView
//
//  Created by 李世文 on 2020/8/9.
//

import UIKit

class TopChartsTableViewController: UITableViewController {

    let topCharts = [
        TopChart(appName: "Monument Valley 2", intro: "A story of beauty and illusion", iconImageName: "appIcon1", price: 3.99),
        TopChart(appName: "Alto’s Adventure", intro: "A snowboarding odyssey", iconImageName: "appIcon2", price: 6.99),
        TopChart(appName: "Full of Stars", intro: "Every choice matters", iconImageName: "appIcon3", price: 6.99),
        TopChart(appName: "Causality", intro: "Time-bending challenges", iconImageName: "appIcon4", price: 1.99),
        TopChart(appName: "Splitter Critters", intro: "Split words and save critters", iconImageName: "appIcon5", price: 1.99),
        TopChart(appName: "Prune", intro: "The beauty of cultivation", iconImageName: "appIcon6", price: 3.99),
        TopChart(appName: "Grapple Gum", intro: "Play as a piece of gum", iconImageName: "appIcon7", price: 2.64)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return topCharts.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appList", for: indexPath) as! TopChartsTableViewCell
        // Configure the cell...
        cell.appNameLabel.text = topCharts[indexPath.row].appName
        cell.introLabel.text = topCharts[indexPath.row].intro
        cell.appChartLabel.text = (indexPath.row + 1).description
        let image = UIImage(named: topCharts[indexPath.row].iconImageName)
        cell.appIconImage.image = image
        cell.priceButton.setTitle("$" + String(format: "%.2f", topCharts[indexPath.row].price), for: .normal)
        return cell
    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
//    }
    
    @IBSegueAction func showAppDetialSegue(_ coder: NSCoder, sender: TopChartsTableViewCell, segueIdentifier: String?) -> AppDetialViewController? {
        let controller = AppDetialViewController(coder: coder)
        controller?.name = sender.appNameLabel.text
        controller?.intro = sender.introLabel.text
        controller?.imageName = sender.appIconImage.image
        return controller
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
