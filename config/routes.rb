Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/words/sample', to: 'words#sample', as: 'sample_word'
  get '/word/:word/check', to: 'words#check', as: 'check_word'

end
