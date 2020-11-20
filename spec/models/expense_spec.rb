require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @expense = FactoryBot.build(:expense)
  end

  describe '出費の保存' do
    context "出費が保存できる場合" do
      it "全て入力されていれば保存できる" do
        expect(@expense).to be_valid
      end
      it "メモが空白でも保存できる" do
        @expense.memo = ""
        expect(@expense).to be_valid
      end
    end
    context "出費が保存できない場合" do
      it "日付がないと出費は保存できない" do
        @expense.start_time = ""
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Start timeを入力してください")
      end
      it "存在しない日付を入力すると出費は保存できない" do
        @expense.start_time = "2020-11-31"
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Start timeを入力してください")
      end
      it "品物がないと出費は保存できない" do
        @expense.name = ""
        @expense.valid?
        expect(@expense.errors.full_messages).to include("品物を入力してください")
      end
      it "金額がないと出費は保存できない" do
        @expense.price = ""
        @expense.valid?
        expect(@expense.errors.full_messages).to include("金額を入力してください")
      end
      it "金額が全角だと出費は保存できない" do
        @expense.price = "５００"
        @expense.valid?
        expect(@expense.errors.full_messages).to include("金額半角数字で入力してください")
      end
      it "購入場所が無いと出費は保存できない" do
        @expense.wheretobuy = ""
        @expense.valid?
        expect(@expense.errors.full_messages).to include("購入場所を入力してください")
      end
      it "カテドリーを選択していないとと出費は保存できない" do
        @expense.category_id = "1"
        @expense.valid?
        expect(@expense.errors.full_messages).to include("項目は1以外の値にしてください")
      end
      it "支払い方法を選択していないとがないと出費は保存できない" do
        @expense.payment_id = "1"
        @expense.valid?
        expect(@expense.errors.full_messages).to include("支払い方法は1以外の値にしてください")
      end
    end
  end
end
