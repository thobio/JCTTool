# JCTTool

### Make UI Creation Simple.

Are you bored with programmtic auto layout then this package will help you to create beautiful UI with programmatic auto layout.

##### How to add a size to an UIImageView?

```
import UIKit
import JCTTool // When Using JCTTool need to import the package

class ViewController: UIViewController {
    
    //MARK:- Property
    let profileImage:UIImageView = {
        let imgView = UIImageView()
        imgView.image = UIImage(named: "profile")
        return imgView
    }()
    //MARK:- LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileImage)
        congigUISimpleLayoutFunc()
        congigUIJCTToolFunc()
    }

    //MARK:- Helper

    /// Without using JCTTool

    func congigUISimpleLayoutFunc(){
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }

    /// When we use JCTTool we need to add only 1 line of code 
    
    func congigUIJCTToolFunc(){
        profileImage.setDimensions(width: 200, height: 200)
    }
}
```

<img src='screenshot/Size.png' width='400' height='500' />
#### If we want to place the image to the center of the  parent view .

```
profileImage.center(inView: self.view)
```
<img src='screenshot/center.png' width='400' height='500' />
#### If we want to place the image top center of the parent view.
 ```
 profileImage.centerX(inView: view, topAnchor: view.topAnchor, paddingTop: 10)
 ```

 <img src='screenshot/TopCenter.png' width='400' height='500' />