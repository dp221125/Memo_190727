import UIKit

class MemoCreateViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        memoSave(self)
    }
    
    // 텍스트뷰의 텍스트를 가져와서 Mode 배열에 저장하고 화면을 닫아햐 함.
    @IBAction func memoSave(_ sender: Any) {
        print("memo save")
        //1. 텍스트뷰의 텍스트를 저장할 프로퍼티 생성
        let memo = memoTextView.text
        
        //2. 새로운 메모인스턴스를 생성하고 모델배열에 저장
        let newMemo = Model(contents: memo ?? "")
        Model.contentsArr.append(newMemo)
        
//        let memoList = MemoListViewController()
        
        
//        present(memoList, animated: true, completion: nil)

    
    }
    

}
