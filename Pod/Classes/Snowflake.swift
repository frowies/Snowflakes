//
//  Twitter: @MartinRogalla
//  EmaiL: email@martinrogalla.com
//
//  Created by Martin Rogalla.
//

import UIKit

class Snowflake : UIView {

    convenience init (position : CGPoint, minimumSize : Int, maximumSize : Int, image: UIImage?) {
        let randomSize: CGFloat!
        
        if minimumSize < maximumSize {
            randomSize = CGFloat(arc4random_uniform(UInt32(maximumSize - minimumSize)) + UInt32(minimumSize))
        } else {
            //If the parameters passed in were not correct, we should flip which is the min and max
            randomSize = CGFloat(arc4random_uniform(UInt32(minimumSize - maximumSize)) + UInt32(maximumSize))
        }

        self.init(frame: CGRect(x: position.x, y: position.y, width: randomSize, height: randomSize))

        let imageView = UIImageView(image: image)
        imageView.frame = self.frame
        addSubview(imageView)
    }

}
