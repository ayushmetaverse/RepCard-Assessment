import UIKit

class FloatingButtonView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let rulesButton = createButton(title: "Rules", imageName: "checklist")
        let shareButton = createButton(title: "Share", imageName: "square.and.arrow.up")
        
        let stackView = UIStackView(arrangedSubviews: [rulesButton, shareButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        backgroundColor = .black
        layer.cornerRadius = 8
        layer.masksToBounds = true
    }
    
    private func createButton(title: String, imageName: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setImage(UIImage(systemName: imageName), for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        return button
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
