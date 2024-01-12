import UIKit

class GameListController: UIViewController {
    
//  Таблица
    let myTableView = UITableView(frame: .zero, style: .insetGrouped)
    var nameOfGame = ["Alan Wake 2", "Baldurs Gate 3", "Fallout 1"]
    let indetifire = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      Настройки страницы
        self.view.backgroundColor = .systemGray6
        self.navigationItem.title = "Игры"
        
//      Настройки таблицы
        myTableView.frame = CGRect(x: 10, y: 200, width: 370, height: 1400)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: indetifire)
        self.view.addSubview(myTableView)
    }
}
extension GameListController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedGame = nameOfGame[indexPath.row]
        let infoController = InfoController()
        self.navigationController?.pushViewController(infoController, animated: true)
    }

}

extension GameListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: indetifire)
        cell?.textLabel?.text = nameOfGame[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsSection section: Int) -> Int {
        return nameOfGame.count
    }
}
