Rails.application.routes.draw do
  get 'diary' => 'diary#mokuji', as: 'diaries'
  post 'diary' => 'diary#tsukuru', as: 'tsukuru_diary'
  get 'diary/kaku' => 'diary#kaku', as: 'kaku_diary'
  get 'diary/:id/naosu' => 'diary#naosu', as: 'naosu_diary'
  get 'diary/:id' => 'diary#yomu', as: 'yomu_diary'
  # as: 'diary'だと弾かれる

  patch 'diary/:id' => 'diary#kakikae', as: 'kakikae_diary'
  delete 'diary/:id' => 'diary#kesu', as: 'kesu_diary'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
