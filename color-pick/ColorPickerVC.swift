/**
 This class manage the window with multiple buttons, and is responsible
 to update the gray button after the user clicks in any button
 */
import UIKit

class ColorPickerVC: UIViewController {

    //
    // This variable will be our ColorPresenterVC
    //
    var delegate: ColorTransferDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        print(sender.titleLabel!.text!)
        
        //
        // we call ColorPresenterVC::colorDidChoose()
        // In this wy we can change paramters in the other view, we 
        // the view in here!
        //
        delegate?.colorDidChoose(
            color: sender.backgroundColor!,
            withName: sender.titleLabel!.text!
        )
    }
}
