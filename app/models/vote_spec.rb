require 'rails_helper'

describe Vote do
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        v = Vote.new(value: 1)
        expect(v.valid?).to eq(true)

        vote2 = Vote.new(value: -1)
        expect(vote2.valid?).to eq(true)

        bad_vote = Vote.new(value: 2)
        expect(bad_vote.valid?).to eq(false)
      end
    end
  end
end