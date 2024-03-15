//
//  TableVC.swift
//  Notes
//
//  Created by Илья on 15.03.2024.
//

import UIKit

final class TableViewController: UITableViewController {
    var notes = ["Note 1", "Note 2", "Note 3", "Note 4"]
    var noteTexts = ["Text 1", "Text 2", "Text 3", "Text 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = notes[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "RedactingVC", sender: noteTexts[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "RedactingVC" {
            if let noteText = sender as? String {
                let destinationVC = segue.destination as! NoteViewController
                destinationVC.noteText = noteText
            }
        }
    }
    
}
