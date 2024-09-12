import UIKit

func headerView() -> UIView {
    let header = UIView()
    header.translatesAutoresizingMaskIntoConstraints = false
    
    let backButton = UIButton(type: .system)
    backButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
    backButton.tintColor = .black
    
    let titleLabel = UILabel()
    titleLabel.text = "Major League Doors"
    titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
    
    let infoButton = UIButton(type: .system)
    infoButton.setImage(UIImage(systemName: "info.circle"), for: .normal)
    infoButton.tintColor = .black
    
    let stackView = UIStackView(arrangedSubviews: [backButton, titleLabel, infoButton])
    stackView.axis = .horizontal
    stackView.alignment = .center
    stackView.spacing = 10
    stackView.distribution = .fillProportionally
    
    header.addSubview(stackView)
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        stackView.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 16),
        stackView.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -16),
        stackView.centerYAnchor.constraint(equalTo: header.centerYAnchor)
    ])
    
    return header
}
