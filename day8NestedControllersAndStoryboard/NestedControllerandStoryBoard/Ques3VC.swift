//
//  Ques3VC.swift
//  NestedControllerandStoryBoard
//
//  Created by Gaurav Bisht on 11/10/21.
//

import UIKit

class Ques3VC: UIViewController {

    @IBOutlet weak var answer: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        difference()
    }
    private func difference(){
        //Frames and bound-
        /*
         frame = a view’s location and size using the parent view’s coordinate system (important for placing the view in the parent)
         bounds = a view’s location and size using its own coordinate system (important for placing the view’s content or subviews within itself)

         */
        answer.text = """

        Frame -> A frame is Location and Size of a View which uses the Coordinate System of parent's View.

        Bound -> A Bound is Location and Size of a View which uses it's Own Coordinate System.

        clipsToBounds : with clipsToBounds set to YES, I'll only see the part of the subview that fits within the bounds of the superview. Otherwise, if clipsToBounds is set to NO, I'll see the entire subview, even the parts outside the superview
         

        masksToBounds: If the masksToBounds property is set to YES, any sublayers of the layer that extend outside its boundaries will be clipped to those boundaries.
            When masksToBounds is NO, no clipping occurs, and any sublayers that extend outside the layer's boundaries will be visible in their entirety.

           ---/// masksToBounds view Ke Layer Par Use Karte Hai///
           ---/// clipsToBounds view Par Use Karte Hai///



         A strong reference : is like creating a new root for the tree, increasing it’s retain count by 1 and further ensuring it won’t be destroyed.

         A weak reference : is like observing the tree from afar. You can still perform all the same functions on it, but have no control over keeping it rooted and thereby ensuring it is not destroyed. If all its strong references are removed, you won’t be able to access the object.

        ---/// We uses weak to avoid "Retain Cycles" ///---
"""
    }


}
