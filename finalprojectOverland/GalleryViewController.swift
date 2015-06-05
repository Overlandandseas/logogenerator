//
//  GalleryViewController.swift
//  finalprojectOverland
//
//  Created by Student on 6/3/15.
//  Copyright (c) 2015 DePaul University. All rights reserved.
//

import UIKit

var backgroundImage: UIImage? = nil
var useImage: Bool = true

class GalleryViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var useImageSwitch: UISwitch!
    
    @IBOutlet weak var buttonFace: UIButton!
    
    var picker: UIImagePickerController? = UIImagePickerController()
    var popover: UIPopoverController? = nil
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useImageSwitch.on = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func useImageHit(sender: AnyObject) {
        useImage = useImageSwitch.on
    }
    @IBAction func selectImageHit(sender: AnyObject) {
        var alert: UIAlertController = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .ActionSheet)
        
        var cameraAction = UIAlertAction(title: "Camera", style: .Default){
            UIAlertAction in
            self.openCamera()
        }
        
        var gallaryAction = UIAlertAction(title: "Gallary", style: .Default){
            UIAlertAction in
            self.openGallary()
        }
        var cancelAction = UIAlertAction(title: "Cancel", style: .Cancel){
            UIAlertAction in
        }
        
        
        //adding actions
        picker?.delegate = self
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        
        
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            self.presentViewController(alert, animated: true, completion: nil)
            
        } else {
            popover = UIPopoverController(contentViewController: alert)
            popover!.presentPopoverFromRect(buttonFace.frame, inView: self.view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        }
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        
        picker.dismissViewControllerAnimated(true , completion: nil)
        //imageView.image = editingInfo[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.image = image
        backgroundImage = image
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        println("picker CANCELED")
    }
    
    func openCamera(){
        if UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            picker!.sourceType = UIImagePickerControllerSourceType.Camera
            self .presentViewController(picker!, animated: true, completion: nil)
        } else {
            openGallary()
        }
    }
    
    func openGallary(){
        picker!.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            self .presentViewController(picker!, animated: true, completion: nil)
            
        } else  {
            popover = UIPopoverController(contentViewController: picker!)
            popover!.presentPopoverFromRect(buttonFace.frame, inView: self.view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
