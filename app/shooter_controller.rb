class ShooterController < UIViewController
  def viewDidLoad

    #view = UIImageView.alloc.init

    @image = UIImageView.alloc.init
    @image.image = UIImage.imageNamed('spaceship.jpg')
    @image.frame = CGRectMake(0, 0, @image.image.size.width, @image.image.size.height)
    @image.userInteractionEnabled = true

    view.addSubview(@image)

    @right_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @right_button.setTitle(">>", forState:UIControlStateNormal)
    @right_button.frame = [[270,440],[30,30]]
    @right_button.addTarget(self, action:'moveRight', forControlEvents:UIControlEventTouchUpInside)
    view.addSubview(@right_button)

    @left_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @left_button.setTitle("<<", forState:UIControlStateNormal)
    @left_button.addTarget(self, action:'moveLeft', forControlEvents:UIControlEventTouchUpInside)
    @left_button.frame = [[20, 440],[30,30]]
    view.addSubview(@left_button)




    def moveRight
      @image.frame = CGRectMake(@image.frame.origin.x + 3, 0, @image.image.size.width, @image.image.size.height)
      puts @image.frame.origin.inspect
    end

    def moveLeft
      @image.frame = CGRectMake(@image.frame.origin.x - 3, 0, @image.image.size.width, @image.image.size.height)
      puts @image.frame.origin.inspect
    end
  end
end
