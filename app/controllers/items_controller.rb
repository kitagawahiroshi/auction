class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id]) #@itemビューに情報をわたす AppのModelsの中のitemクラスのfindメソッドをつかう
  end 
end
