//
//  MemoDetailViewController.swift
//  Memo_190727
//
//  Created by 김은비 on 27/07/2019.
//  Copyright © 2019 biiyasoft. All rights reserved.
//

import UIKit
protocol DoneDelegate{
    func reloadData()
}
class MemoDetailViewController: UIViewController {

    var memo: String?
    var delegate: DoneDelegate?
    
    @IBOutlet weak var memoContexts: UITextView!
    
    @IBAction func memoSave(_ sender: Any) {
        print("memo save")
        //1. 텍스트뷰의 텍스트를 저장할 프로퍼티 생성
        let memo = memoContexts.text
        
        //2. 새로운 메모인스턴스를 생성하고 모델배열에 저장
        if let newMemo = Model(contents: memo ?? "").contents {
            Model.contentsArr.append(newMemo)
            delegate?.reloadData()
            self.navigationController?.popViewController(animated: true)
        }
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.memoContexts.text = memo
        
        if memo != nil {
            
            guard let _ = self.navigationController else {
                print("RUN")
                return
            }
            self.navigationItem.title = "EDIT"
            self.navigationItem.rightBarButtonItem = nil
        }else {
        
            self.navigationItem.title = "NEW MEMO"
        }
        
       
    }
    


}
