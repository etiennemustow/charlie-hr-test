require './user.rb'

describe User do
    before do
        @user = User.new("Etienne", Date.new(1996, 1, 21))
        @test_date = Date.new(2020, 11, 5)
    end

    describe "#age" do
        it "should return the correct age" do
            allow(Date).to receive(:today).and_return(@test_date)
        expect(@user.age).to eq(24)
        end
    end

    describe "#next_birthday" do
        it "should return the correct next birthday" do
        expect(@user.next_birthday).to eq(Date.new(2021, 1, 21))
        end
    end
end
  