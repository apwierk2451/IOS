//
//  EditDelegate.swift
//  Navigation
//
//  Created by 이은찬 on 2021/12/18.
//

// Protocol : 작업지시서, 시방서

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}
