//
//  NoteViewController.swift
//  Notes
//
//  Created by Илья on 15.03.2024.
//

import UIKit

final class NoteViewController: UIViewController {
    
    @IBOutlet weak var noteLabel: UITextView!
    var noteText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NoteViewController did load with note: \(noteText ?? "none")") // Выведем загружаемую заметку или none если заметка не была передана.
        noteLabel.text = noteText
    }
}
