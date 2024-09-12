import UIKit

func prizesView() -> UIView {
    let prizesView = UIView()
    
    let titleLabel = UILabel()
    titleLabel.text = "Prizes"
    titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
    
    let scrollView = UIScrollView()
    scrollView.showsHorizontalScrollIndicator = false
    
    let prizesStackView = UIStackView()
    prizesStackView.axis = .horizontal
    prizesStackView.spacing = 15
    prizesStackView.alignment = .center
    
    // Add product card views to the stack
    prizesStackView.addArrangedSubview(createProductCard(image: "tango", title: "C1: Watch SE 2"))
    prizesStackView.addArrangedSubview(createProductCard(image: "watch", title: "C2: Watch SE 2"))
    prizesStackView.addArrangedSubview(createProductCard(image: "watch", title: "C3: Watch SE 2"))
    prizesStackView.addArrangedSubview(createProductCard(image: "watch", title: "C4: Watch SE 2"))
    prizesStackView.addArrangedSubview(createProductCard(image: "watch", title: "C5: Watch SE 2"))
    
    scrollView.addSubview(prizesStackView)
    
    prizesStackView.translatesAutoresizingMaskIntoConstraints = false
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        prizesStackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        prizesStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        prizesStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
        prizesStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        prizesStackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
    ])
    
    prizesView.addSubview(titleLabel)
    prizesView.addSubview(scrollView)
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: prizesView.topAnchor, constant: 20),
        titleLabel.leadingAnchor.constraint(equalTo: prizesView.leadingAnchor, constant: 16),
        
        scrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        scrollView.leadingAnchor.constraint(equalTo: prizesView.leadingAnchor),
        scrollView.trailingAnchor.constraint(equalTo: prizesView.trailingAnchor),
        scrollView.heightAnchor.constraint(equalToConstant: 150)
    ])
    
    return prizesView
}

func createProductCard(image: String, title: String) -> UIView {
    let cardView = UIView()
    cardView.backgroundColor = .white
    cardView.layer.cornerRadius = 10
    cardView.layer.shadowRadius = 3
    cardView.layer.shadowOpacity = 0.2
    cardView.layer.shadowOffset = CGSize(width: 0, height: 2)
    
    let imageView = UIImageView(image: UIImage(named: image))
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
    let titleLabel = UILabel()
    titleLabel.text = title
    titleLabel.font = UIFont.systemFont(ofSize: 14)
    titleLabel.textAlignment = .center
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    
    cardView.addSubview(imageView)
    cardView.addSubview(titleLabel)
    
    NSLayoutConstraint.activate([
        imageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
        imageView.widthAnchor.constraint(equalToConstant: 80),
        imageView.heightAnchor.constraint(equalToConstant: 90),
        imageView.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
        
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
        titleLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -8)
    ])
    
    cardView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        cardView.widthAnchor.constraint(equalToConstant: 135),
        cardView.heightAnchor.constraint(equalToConstant: 150)
    ])
    
    return cardView
}
