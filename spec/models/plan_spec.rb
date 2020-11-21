require 'rails_helper'

RSpec.describe Plan, type: :model do
  before do
    @plan = FactoryBot.build(:plan)
  end

  describe '出費予定の保存' do
    context "出費予定が保存できる場合" do
      it "全て入力されていれば保存できる" do
        expect(@plan).to be_valid
      end
      it "メモが空白でも保存できる" do
        @plan.memo = ""
        expect(@plan).to be_valid
      end
    end
    context "出費予定が保存できない場合" do
      it "日付がないと予定は保存できない" do
        @plan.start_time = ""
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Start timeを入力してください")
      end
      it "存在しない日付を入力すると予定は保存できない" do
        @plan.start_time = "2020-11-31"
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Start timeを入力してください")
      end
      it "品物がないと予定は保存できない" do
        @plan.name = ""
        @plan.valid?
        expect(@plan.errors.full_messages).to include("名前を入力してください")
      end
      it "金額がないと予定は保存できない" do
        @plan.price = ""
        @plan.valid?
        expect(@plan.errors.full_messages).to include("金額を入力してください")
      end
      it "金額が全角だと予定は保存できない" do
        @plan.price = "５００"
        @plan.valid?
        expect(@plan.errors.full_messages).to include("金額半角数字で入力してください")
      end
      it "金額に半角英を入れると予定は保存できない" do
        @plan.price = "aaa"
        @plan.valid?
        expect(@plan.errors.full_messages).to include("金額半角数字で入力してください")
      end
      it "金額に記号を入れると予定は保存できない" do
        @plan.price = "1,000"
        @plan.valid?
        expect(@plan.errors.full_messages).to include("金額半角数字で入力してください")
      end
      it "支払い方法を選択していないとがないと予定は保存できない" do
        @plan.payment_id = "1"
        @plan.valid?
        expect(@plan.errors.full_messages).to include("支払い方法は1以外の値にしてください")
      end
    end
  end
end