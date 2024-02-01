FactoryBot.define do
  factory :todo do
    name { "Hoge" }
    description  { "Fuga" }
    done { false }
  end
end
