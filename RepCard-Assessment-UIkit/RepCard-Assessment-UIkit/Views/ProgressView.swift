import UIKit

class ProgressView: UIView {
    
    var percentage: Double = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    init(percentage: Double) {
        self.percentage = percentage
        super.init(frame: .zero)
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let centerPoint = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let radius = min(rect.width, rect.height) / 2
        let lineWidth: CGFloat = 2
        
        let circlePath = UIBezierPath(arcCenter: centerPoint, radius: radius - lineWidth, startAngle: -.pi / 2, endAngle: .pi * 2 * CGFloat(percentage / 100) - .pi / 2, clockwise: true)
        UIColor.red.setStroke()
        circlePath.lineWidth = lineWidth
        circlePath.stroke()
        
        if percentage >= 100 {
            let checkmarkPath = UIBezierPath()
            checkmarkPath.move(to: CGPoint(x: centerPoint.x - 5, y: centerPoint.y))
            checkmarkPath.addLine(to: CGPoint(x: centerPoint.x, y: centerPoint.y + 5))
            checkmarkPath.addLine(to: CGPoint(x: centerPoint.x + 10, y: centerPoint.y - 5))
            UIColor.green.setStroke()
            checkmarkPath.lineWidth = 2
            checkmarkPath.stroke()
        } else {
            let percentageLabel = UILabel()
            percentageLabel.text = "\(Int(percentage))%"
            percentageLabel.font = UIFont.systemFont(ofSize: 11)
            percentageLabel.textColor = .red
            percentageLabel.sizeToFit()
            percentageLabel.center = centerPoint
            addSubview(percentageLabel)
        }
    }
}
