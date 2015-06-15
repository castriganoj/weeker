FactoryGirl.define do
    factory :goal do
        title  'the goal name'
        description 'the goal description'
        list
    end
    
    factory :list do
        name "22"
        factory :list_with_goals do
            after(:create) do |list|
                create(:goal, list: list)
            end
        end
        
    end

end