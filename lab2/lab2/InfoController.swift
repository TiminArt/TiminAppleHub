import UIKit

class InfoController: UIViewController {

    var selectedItem: String!
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
        self.view.backgroundColor = .systemMint
        self.navigationItem.title = "Информационная страница"
        lableMain.text = "Информация"
    }

//    let game: String
//    
//    init(game: String) {
//        self.game = game
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.navigationItem.title = game
////      Настройки страницы
//        self.view.backgroundColor = .systemYellow
//        lableMain.text = "Конкретная игра"
//        // Сюда, вероятно, надо добавить информацию о всех играх
//    }
    
}
