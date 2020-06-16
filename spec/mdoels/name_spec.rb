require 'rails_helper'

RSpec.describe Name, type: :model do
      let(:name){Name.new(first_name:"")} #titleが空文字のTodoオブジェクトを生成
      let(:name2){Name.new(last_name:"")}

      it "エラーを返す" do
        name.valid? #バリデーションを実行
        expect(name.errors[:first_name]).to be_present #期待結果：エラーメッセージが存在する
      end
      
      it "バリデーションチェック２" do
          name2.valid?
          expect(name2.errors[:first_name]).to be_present
      end
      
end
