import UIKit

class ViewController: UIViewController {
    
    //Текст
    private lazy var lableMain: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview($0)
        $0.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        $0.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      Настройки страницы
        self.view.backgroundColor = .systemMint
        self.navigationItem.title = "Главная страница"
        lableMain.text = "Список игр, которые сейчас прохожу"
        
//      Настройки навигации
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "info"), style: .plain, target: self, action: #selector(didTapButton))
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        
    }
    //Функция кнопки
    @objc private func didTapButton() {
        let infoController = InfoController()
        self.navigationController?.pushViewController(infoController, animated: true)
    }
}
