class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page])
  end

  def index_by_sex
  	sex = params[:sex]
  	@posts = Post.where(['sex LIKE ?', "%#{sex}%"]).paginate(page: params[:page]) if sex
  	render :index
  end

  def index_by_age
  	age = params[:age]
  	@posts = Post.where(['age LIKE ?', "%#{age}%"]).paginate(page: params[:page]) if age
  	render :index
  end

  def index_by_prefecture
  	prefecture = params[:prefecture]
  	@posts = Post.where(['prefecture LIKE ?', "%#{prefecture}%"]).paginate(page: params[:page]) if prefecture
  	render :index
  end

  # def show
  #   @post = Post.find(params[:id])
  # end

  def new
    @post = Post.new
    @ages = ["指定なし","10代","20代","30代","40代","50代以上"]
    @sex = ["指定なし","男性","女性"]
    @prefectures = ["指定なし",'北海道', '青森県', '岩手県', '宮城県', '秋田県', 
    '山形県', '福島県', '茨城県', '栃木県', '群馬県', 
    '埼玉県', '千葉県', '東京都', '神奈川県', '新潟県', 
    '富山県', '石川県', '福井県', '山梨県', '長野県', 
    '岐阜県', '静岡県', '愛知県', '三重県', '滋賀県', 
    '京都府', '大阪府', '兵庫県', '奈良県', '和歌山県', 
    '鳥取県', '島根県', '岡山県', '広島県', '山口県', 
    '徳島県', '香川県', '愛媛県', '高知県', '福岡県', 
    '佐賀県', '長崎県', '熊本県', '大分県', '宮崎県', 
    '鹿児島県', '沖縄県']
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @ages = ["指定なし","10代","20代","30代","40代","50代以上"]
    @sex = ["指定なし","男性","女性"]
    @prefectures = ["指定なし",'北海道', '青森県', '岩手県', '宮城県', '秋田県', 
    '山形県', '福島県', '茨城県', '栃木県', '群馬県', 
    '埼玉県', '千葉県', '東京都', '神奈川県', '新潟県', 
    '富山県', '石川県', '福井県', '山梨県', '長野県', 
    '岐阜県', '静岡県', '愛知県', '三重県', '滋賀県', 
    '京都府', '大阪府', '兵庫県', '奈良県', '和歌山県', 
    '鳥取県', '島根県', '岡山県', '広島県', '山口県', 
    '徳島県', '香川県', '愛媛県', '高知県', '福岡県', 
    '佐賀県', '長崎県', '熊本県', '大分県', '宮崎県', 
    '鹿児島県', '沖縄県']
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def update
  #   @post.update(post_params)
  #   redirect_to root
  # end

  # def destroy
  #   @post.destroy
  # end

  private
  def post_params
    params.require(:post).permit(:name, :description, :age, :sex, :prefecture, :snapchat_name)
  end
end
