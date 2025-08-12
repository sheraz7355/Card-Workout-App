import UIKit

class rulesscreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupRulesTextView()
    }
    
    func setupRulesTextView() {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = true
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.text = """
        📜 RULES

        The value of each card represents the number of exercises you do.

        🂫 J = 11
        🂭 Q = 12
        🂮 K = 13
        🂡 A = 14

        ♠️ = Pushups
        ❤️ = Situps
        ♦️ = Planks
        ♣️ = Squats
        """
        
        view.addSubview(textView)
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
