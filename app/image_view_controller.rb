# -*- coding: utf-8 -*-
class ImageViewController < UIViewController
  def viewDidLoad
    super
    url = "http://lohas.nicoseiga.jp/thumb/3075547i?"
    image_src = NSData.dataWithContentsOfURL(NSURL.URLWithString(url))
    image = UIImage.imageWithData(image_src)

    image_view = UIImageView.alloc.initWithImage(image)
    image_view.frame = CGRectMake(0, 100, self.adjustImageSizeWidth(image),self.adjustImageSizeHeight(image))
    view.addSubview(image_view)

    margin = 20
    true
  end

  def adjustImageSizeHeight(image)
    if image.size.height > 320
      image.size.height = 320
    end
  end

  def adjustImageSizeWidth(image)
    if image.size.width > 320
      image.size.width = 320
    end
  end
end
