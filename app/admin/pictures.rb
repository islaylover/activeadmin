ActiveAdmin.register Picture do

  # 許可するパラメタ指定
  permit_params :impression_id, :title, :title_en, :impression_en, :memo, :memo_en, :image, :delete_flg
end
