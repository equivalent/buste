class CardSign
  def self.seven_hearth_img
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Bay_herz.svg/80px-Bay_herz.svg.png'
  end

  def self.seven_green_img
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Bay_gras.svg/80px-Bay_gras.svg.png'
  end

  def self.seven_acorn_img
    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Bay_eichel.svg/60px-Bay_eichel.svg.png'
  end

  def self.seven_ball_img
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Bay_schellen.svg/80px-Bay_schellen.svg.png'
  end

  def self.sign_map
    {
      hearth: CardSign.seven_hearth_img,
      green: CardSign.seven_green_img,
      acorn: CardSign.seven_acorn_img,
      ball: CardSign.seven_ball_img,
    }
  end
end
