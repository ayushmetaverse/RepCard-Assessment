import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Main Stack View
        let mainStackView = UIStackView(arrangedSubviews: [headerView(), gradientView(), prizesView()])
        mainStackView.axis = .vertical
        mainStackView.spacing = 0
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mainStackView)
        view.addSubview(floatingButtonView())
        
        // Constraints
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainStackView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor),
            
            // Floating button positioning
            floatingButtonView().centerXAnchor.constraint(equalTo: view.centerXAnchor),
            floatingButtonView().bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    func headerView() -> UIView {
        // Implement HeaderView here
        return UIView()
    }
    
    func gradientView() -> UIView {
        // Implement GradientView here
        return UIView()
    }
    
    func prizesView() -> UIView {
        // Implement PrizesView here
        return UIView()
    }
    
    func floatingButtonView() -> UIView {
        let buttonView = FloatingButtonView()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        return buttonView
    }
}
