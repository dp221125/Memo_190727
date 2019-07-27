
import UIKit

class MemoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DoneDelegate {

    @IBOutlet weak var memoTatable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.memoTatable.delegate = self
        self.memoTatable.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            if let viewController: MemoDetailViewController = segue.destination as? MemoDetailViewController {
                 viewController.delegate = self
            }
           
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Model.contentsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = memoTatable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let newMemo = Model.contentsArr[indexPath.row]
        cell.textLabel?.text = newMemo
        return cell
    }
    
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let target = Model.contentsArr[indexPath.row]

        if let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? MemoDetailViewController {

            detailVC.memo = target
            self.navigationController?.pushViewController(detailVC, animated: true)
        }

    }
    
    func reloadData() {
        self.memoTatable.reloadData()
    }
    
}
