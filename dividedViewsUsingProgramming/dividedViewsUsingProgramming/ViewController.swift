import UIKit
class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        setupUI()
        setupConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private let outerView: UIView = {
        let outerView = UIView()
        outerView.translatesAutoresizingMaskIntoConstraints = false
        outerView.backgroundColor = UIColor.yellow
        return outerView
    }()
    
    private let innerView1: UIView = {
        let innerView = UIView()
        innerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.backgroundColor = UIColor.red
        return innerView
    }()
    
    private let innerView2: UIView = {
        let innerView = UIView()
        innerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.backgroundColor = UIColor.green
        return innerView
    }()
    
    private let innerView3: UIView = {
        let innerView = UIView()
        innerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.backgroundColor = UIColor.yellow
        return innerView
    }()
    
    private let innerView4: UIView = {
        let innerView = UIView()
        innerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.backgroundColor = UIColor.systemPink
        return innerView
    }()
    
    func setupUI() {
        view.addSubview(outerView)
        outerView.addSubview(innerView1)
        outerView.addSubview(innerView2)
        outerView.addSubview(innerView3)
        outerView.addSubview(innerView4)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            outerView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            outerView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            outerView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            outerView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            innerView1.topAnchor.constraint(
                equalTo: outerView.topAnchor, constant: 0),
            innerView1.leadingAnchor.constraint(
                equalTo: outerView.leadingAnchor, constant: 0),
            innerView1.widthAnchor.constraint(
                equalTo: outerView.widthAnchor, multiplier: 0.5),
            innerView1.heightAnchor.constraint(
                equalTo: outerView.heightAnchor, multiplier: 0.5),
            innerView2.trailingAnchor.constraint(
                equalTo: outerView.trailingAnchor, constant: 0),
            innerView2.topAnchor.constraint(
                equalTo: outerView.topAnchor, constant: 0),
            innerView2.widthAnchor.constraint(
                equalTo: outerView.widthAnchor, multiplier: 0.5),
            innerView2.heightAnchor.constraint(
                equalTo: outerView.heightAnchor, multiplier: 0.5),
            innerView3.bottomAnchor.constraint(
                equalTo: outerView.bottomAnchor, constant: 0),
            innerView3.leadingAnchor.constraint(
                equalTo: outerView.leadingAnchor, constant: 0),
            innerView3.widthAnchor.constraint(
                equalTo: outerView.widthAnchor, multiplier: 0.5),
            innerView3.heightAnchor.constraint(
                equalTo: outerView.heightAnchor, multiplier: 0.5),
            innerView4.bottomAnchor.constraint(
                equalTo: outerView.bottomAnchor, constant: 0),
            innerView4.trailingAnchor.constraint(
                equalTo: outerView.trailingAnchor, constant: 0),
            innerView4.heightAnchor.constraint(
                equalTo: outerView.heightAnchor, multiplier: 0.5),
            innerView4.widthAnchor.constraint(
                equalTo: outerView.widthAnchor, multiplier: 0.5)
        ])
    }
}
