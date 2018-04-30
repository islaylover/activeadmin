ActiveAdmin.register Picture do

  controller do
    def scoped_collection
      Question.includes(:impressions)
    end
  end

  # 許可するパラメタ指定
  #permit_params :impression_id, :title, :title_en, :impression_en, :memo, :memo_en, :image, :delete_flg
end
