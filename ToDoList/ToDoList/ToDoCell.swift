//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Roman Hural on 21.04.2022.
//

import UIKit

protocol ToDoCellDelegate: AnyObject {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    //MARK: - Variables
    weak var delegate: ToDoCellDelegate?
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //MARK: - Methods
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    //MARK: - Actions
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
}
