# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :drow

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name ,win ,lose ,drow)
    self.name = name
    self.win = win
    self.lose = lose
    self.drow = drow
  end
  def calc_win_rate
    win_rate = self.win.to_f / (self.win + self.lose)
    return win_rate
  end
  # インスタンスが持つメソッド（処理）
  def show_team_result
    puts "#{self.name}の2020年の成績は、#{self.win}勝#{self.lose}敗#{self.drow}分、勝率は #{self.calc_win_rate}です。"
  end
end
  
# インスタンスの生成と、変数への代入
giants = Team.new('Giants' ,67 ,45 ,8)
tigers = Team.new('Tigers' ,60 ,53 ,7)
dragons = Team.new('Dragons' ,60 ,55 ,5)
baystars = Team.new('BayStars' ,56 ,58 ,6)
carp = Team.new('Carp' ,52 ,56 ,12)
swallows = Team.new('Swallows' ,41 ,69 ,10)


# インスタンスの使用
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result