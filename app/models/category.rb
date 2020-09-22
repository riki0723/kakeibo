class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '食費' },
    { id: 3, name: '家賃、光熱費、通信費' },
    { id: 4, name: '交通費' },
    { id: 5, name: '自己投資' },
    { id: 6, name: '保険、投資信託' },
    { id: 7, name: '趣味、遊び' },
    { id: 8, name: '嗜好品' },
    { id: 9, name: 'その他' },

end
