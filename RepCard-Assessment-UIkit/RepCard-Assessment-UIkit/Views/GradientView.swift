import UIKit

func gradientView() -> UIView {
    let gradientView = UIView()
    let gradientLayer = CAGradientLayer()
    
    gradientLayer.colors = [UIColor.orange.cgColor, UIColor.purple.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
    gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
    gradientLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
    
    gradientView.layer.addSublayer(gradientLayer)
    
    let emojiLabel = UILabel()
    emojiLabel.text = "🎯"
    
    let infoLabel = UILabel()
    infoLabel.text = "Hannah completed cycle (C3) - 5 mins ago"
    infoLabel.textColor = .white
    infoLabel.font = UIFont.systemFont(ofSize: 13)
    
    let timeIcon = UIImageView(image: UIImage(systemName: "timer"))
    timeIcon.tintColor = .white
    timeIcon.contentMode = .scaleAspectFit
    
    let timeLabel = UILabel()
    timeLabel.text = "3d"
    timeLabel.textColor = .white
    timeLabel.font = UIFont.systemFont(ofSize: 14)
    
    let hStack = UIStackView(arrangedSubviews: [emojiLabel, infoLabel, timeIcon, timeLabel])
    hStack.axis = .horizontal
    hStack.spacing = 8
    
    gradientView.addSubview(hStack)
    
    hStack.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        hStack.leadingAnchor.constraint(equalTo: gradientView.leadingAnchor, constant: 16),
        hStack.trailingAnchor.constraint(equalTo: gradientView.trailingAnchor, constant: -16),
        hStack.centerYAnchor.constraint(equalTo: gradientView.centerYAnchor)
    ])
    
    return gradientView
}
