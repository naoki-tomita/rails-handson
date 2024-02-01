require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe ".search" do
    context "正常系" do
      let!(:todo1) { FactoryBot.create(:todo, name: "こんにちは", description: "あいうえお") }
      let!(:todo2) { FactoryBot.create(:todo, name: "おはようございます", description: "かきくけこ") }
      let!(:todo3) { FactoryBot.create(:todo, name: "さようなら", description: "さしすせそ") }

      it "クエリの文字列がnameに含まれるtodoを取得する" do
        expect(Todo.search("よう")).to eq([todo2, todo3])
      end

      it "クエリの文字列がdescriptionに含まれるtodoを取得する" do
        expect(Todo.search("かき")).to eq([todo2])
      end
    end
  end
end
