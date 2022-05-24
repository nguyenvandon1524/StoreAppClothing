//
//  NewProductViewController.swift
//  ClothingApp
//
//  Created by Don on 5/21/22.
//

import UIKit

class NewProductViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var txtProductName:UITextField?
    @IBOutlet weak var imagesViewProduct:UIImageView?
    @IBOutlet weak var lblRating:UILabel?
    var newProduct = Product()
    
    @IBAction func btnSave(sender: UIButton){
        print("Press Save !")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Tap to imagesView
        let tapGestureImagesView = UITapGestureRecognizer(target: self, action: #selector(tapToImageView(sender:)))
        tapGestureImagesView.numberOfTapsRequired = 1
        imagesViewProduct?.isUserInteractionEnabled = true
        imagesViewProduct?.addGestureRecognizer(tapGestureImagesView)
        // Do any additional setup after loading the view.
        //pan to label star number
        let panGestureToLabelRating = UIPanGestureRecognizer(target: self, action: #selector(panToLabelRating(sender:)))
        lblRating?.isUserInteractionEnabled = true
        lblRating?.addGestureRecognizer(panGestureToLabelRating)
        //tap to label star number
        let tapGestureToLabelRating = UITapGestureRecognizer(target: self, action: #selector(panToLabelRating(sender:)))
        tapGestureToLabelRating.numberOfTapsRequired = 1
        lblRating?.addGestureRecognizer(tapGestureToLabelRating)
    }
    
    @objc func tapToImageView(sender:UITapGestureRecognizer) {
        print("Tap to imageView")
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.sourceType = .photoLibrary
        self.present(pickerController, animated: true, completion: nil)
    }
    
    
    @objc func panToLabelRating(sender:UITapGestureRecognizer) {
        let locationView = sender.location(in: self.view)
        let newLabelRatingFrame = self.view.convert(lblRating!.frame, from: lblRating!.superview)
        let frame1 = CGRect(x:newLabelRatingFrame.origin.x, y:newLabelRatingFrame.origin.y, width:newLabelRatingFrame.size.width/5, height:newLabelRatingFrame.size.height)
        let frame2 = CGRect(x:newLabelRatingFrame.origin.x, y:newLabelRatingFrame.origin.y, width: 2 * newLabelRatingFrame.size.width/5, height:newLabelRatingFrame.size.height)
        let frame3 = CGRect(x:newLabelRatingFrame.origin.x, y:newLabelRatingFrame.origin.y, width: 3 * newLabelRatingFrame.size.width/5, height:newLabelRatingFrame.size.height)
        let frame4 = CGRect(x:newLabelRatingFrame.origin.x, y:newLabelRatingFrame.origin.y, width: 4 * newLabelRatingFrame.size.width/5, height:newLabelRatingFrame.size.height)
        let frame5 = newLabelRatingFrame
        if (frame1.contains(locationView)) {
            lblRating?.text = "★☆☆☆☆"
        }
        else if (frame2.contains(locationView)) {
            lblRating?.text = "★★☆☆☆"
        }
        else if (frame3.contains(locationView)) {
            lblRating?.text = "★★★☆☆"
        }
        else if (frame4.contains(locationView)) {
            lblRating?.text = "★★★★☆"
        }
        else if (frame5.contains(locationView)) {
            lblRating?.text = "★★★★★"
        }
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Press return")
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        newProduct.productName = textField.text ?? ""
    }
    
}
