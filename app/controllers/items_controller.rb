class ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id]) #@itemビューに情報をわたす AppのModelsの中のitemクラスのfindメソッドをつかう
  end 
  
  def index
    @items = Item.all #itemではなくitems
  end

  def new
    @item = Item.new #あたらしいItemをつくってビューに渡す
  end

  def create #viewはnew.html.erb
    @item = Item.new(item_params) #paramsとはitemに関する情報のハッシュ？
    @item.save #セーブする
    redirect_to @item #商品ページに飛ばす
  end

  private #プライベート

  def item_params
    params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url) #ストロングパラメータ
  end

end
