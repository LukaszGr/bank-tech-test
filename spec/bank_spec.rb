require 'bank'

describe Bank do

  context "when new bank account" do
    it "starts with balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  it 'allows to deposit money' do
    expect(subject).to respond_to(:deposit).with(1).argument
  end

  it 'allows to withdraw money' do
    expect(subject).to respond_to(:withdraw).with(1).argument
  end

  describe '#deposit' do
    it 'adds to an account balance' do
      expect{subject.deposit(1)}.to change{subject.balance}.by(1)
    end
  end

  describe '#withdraw' do
    it 'deducts from an account balance' do
      expect{subject.withdraw(1)}.to change{subject.balance}.by(-1)
    end
  end

end
