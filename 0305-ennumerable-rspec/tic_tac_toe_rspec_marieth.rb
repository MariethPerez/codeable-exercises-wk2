require "./metodos_tic_tac_marieth"

RSpec.describe "test tic_tac_toe" do
    value=[1,2,3,7,6,4]
    table=[1,2,3,4,5,6,7,8,9]
    it "expect noPlayed_1" do
        expect(notPlayed(value,table)).to eq(table-value)
    end
    value=[1,2,3,4,5]
    table=[1,2,3,4,5,6,7,8,9]

    it "expect noPlayed_2" do
        expect(notPlayed(value,table)).to eq(table-value)
    end
    #[6,7,8,9]
    it "expect turnHuman_1" do
        allow($stdin).to receive(:gets) { '7' }
        expect(turnHuman([6,7,8,9])).to eq(7)
    end

    it "expect turnHuman_1" do
        allow($stdin).to receive(:gets) { '8' }
        expect(turnHuman([6,7,8,9])).to eq(8)
    end

    it "expect turnHuman_1" do
        allow($stdin).to receive(:gets) { '9' }
        expect(turnHuman([6,7,8,9])).to eq(8)
    end

end