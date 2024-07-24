# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  context "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end

  context "public methods" do
    describe "#name" do
      it "returns the full name of user" do
        user = User.new(
          first_name: "John",
          last_name: "Doe",
        )

        expect(user.name).to eq "John Doe"
      end
    end
  end
end
