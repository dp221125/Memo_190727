
import UIKit

class MemoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var memoTatable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.memoTatable.delegate = self
        self.memoTatable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let cell = sender as? UITableViewCell, let indexPath = memoTatable.indexPath(for: "cell") {
//            let target = Model.contentsArr[indexPath.row]
//            
//            if let detailVC = segue.destination as? MemoDetailViewController {
//                detailVC.memo = target
//            }
//        }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Model.contentsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = memoTatable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let newMemo = Model.contentsArr[indexPath.row]
        cell.textLabel?.text = newMemo.contents
        //print(indexPath)
        //print(indexPath.row)
        return cell
    }
    
  
}
