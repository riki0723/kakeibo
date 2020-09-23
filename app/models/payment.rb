class Payment < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '現金' },
    { id: 3, name: '口座振替' },
    { id: 4, name: 'クレジットカード' },
    { id: 5, name: '電子マネー' },
    { id: 6, name: 'その他' },

  ]
end
