ActiveAdmin.register Impression do

  # 許可するパラメタ指定
  permit_params :title, :title_en, :impression, :impression_en, :drink_id, :user_id, :place_id, :delete_flg, pictures_attributes: [:id, :impression_id, :title, :title_en, :memo, :memo_en, :delete_flg, :image, :_destroy]

  controller do
    def scoped_collection
      # http://ruby-rails.hatenadiary.com/entry/20141108/1415418367
      Impression.includes(:pictures)
    end
  end

  # 実際に表示するカラムをそれぞれ定義
  form do |f|
    f.inputs do
     f.input :title
     f.input :title_en
     f.input :impression
     f.input :impression_en
     f.input :delete_flg
     f.input :place_id, :as => :select, :collection => Place.all.map { |p| [p.name, p.id]}
     f.input :drink_id, :as => :select, :collection => Drink.all.map { |d| [d.name, d.id]}
     f.input :user_id, :as => :select, :collection => User.all.map { |a| [a.nickname, a.id]}
    end

    f.inputs do
      f.has_many :pictures, heading: '写真添付', allow_destroy: true, new_record: true do |p|
        p.input :title
        p.input :title_en
        p.input :delete_flg
        p.input :memo
        p.input :memo_en
        p.input :image
      end
    end

    f.actions #「insert/update」、「Cancel」ボタンを表示する
  end

end
