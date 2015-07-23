//: Playground - noun: a place where people can play

import UIKit


func addViewAndButton() {
    
    guard #available(iOS 9, *)  else {
        return
    }
    
    let containerView = UIView(frame: CGRectMake(0, 0, 200, 200))
    containerView.backgroundColor = UIColor.grayColor()
    
    let stopButton = UIButton(type: UIButtonType.Custom)
    stopButton.backgroundColor = UIColor.redColor()
    stopButton.setTitle("Red", forState: .Normal)
    stopButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
    
    let cautionButton = UIButton(type: .Custom)
    cautionButton.backgroundColor = UIColor.yellowColor()
    cautionButton.setTitle("Yellow", forState: .Normal)
    cautionButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
    
    let goButton = UIButton(type: .Custom)
    goButton.backgroundColor = UIColor.greenColor()
    goButton.setTitle("Green", forState: .Normal)
    goButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
    
    containerView.addSubview(stopButton)
    containerView.addSubview(cautionButton)
    containerView.addSubview(goButton)
    
    stopButton.topAnchor.constraintEqualToAnchor(containerView.topAnchor, constant: 10).active = true
    stopButton.leadingAnchor.constraintEqualToAnchor(containerView.leadingAnchor, constant: 20).active = true
    stopButton.trailingAnchor.constraintEqualToAnchor(containerView.trailingAnchor, constant: -20).active = true
    stopButton.heightAnchor.constraintEqualToConstant(30).active = true
    
    cautionButton.leadingAnchor.constraintEqualToAnchor(stopButton.leadingAnchor).active = true
    cautionButton.trailingAnchor.constraintEqualToAnchor(stopButton.trailingAnchor).active = true
    cautionButton.heightAnchor.constraintEqualToAnchor(stopButton.heightAnchor).active = true
    cautionButton.centerYAnchor.constraintEqualToAnchor(containerView.centerYAnchor, constant: 0.0).active = true
    
    goButton.bottomAnchor.constraintEqualToAnchor(containerView.bottomAnchor, constant: -10).active = true
    goButton.widthAnchor.constraintEqualToAnchor(stopButton.widthAnchor, multiplier: 0.75).active = true
    goButton.heightAnchor.constraintEqualToAnchor(stopButton.heightAnchor).active = true
    goButton.centerXAnchor.constraintEqualToAnchor(containerView.centerXAnchor, constant: 0.0).active = true
    //  This is the old school way to do it.
    //  NSLayoutConstraint(item: goButton, attribute: NSLayoutAttribute.CenterX, relatedBy: .Equal, toItem: containerView, attribute: .CenterX, multiplier: 1.0, constant: 0.0).active = true

    //  Instead of setting .active = true on all the constraints, you could hang on to references to them and active them all like this:
    //    NSLayoutConstraint.activateConstraints([stopTopConstraint, stopLeadingConstraint, stopTrailingConstraint, stopHeightConstraint,  cautionLeadingConstraint, cautionTrailingConstraint, cautionHeightConstraint,cautionCenterYConstraint,goBottomConstraint, goLeadingConstraint, goWidthConstraint, goHeightConstraint])

    stopButton.translatesAutoresizingMaskIntoConstraints = false
    goButton.translatesAutoresizingMaskIntoConstraints = false
    cautionButton.translatesAutoresizingMaskIntoConstraints = false
    containerView.layoutIfNeeded()
    
    
    
    containerView
}
addViewAndButton()

