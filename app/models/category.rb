class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '中華' },
    { id: 4, name: '洋食' },
    { id: 5, name: 'アジア料理' },
    { id: 6, name: '韓国料理' },
    { id: 7, name: '肉・魚料理' },
    { id: 8, name: '鍋料理' },
    { id: 9, name: 'デザート' }
  ]
end
