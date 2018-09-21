require 'name'

describe Name do
  subject(:ayo) {Name.new('Ayo')}

  describe '#user' do
    it 'returns a name' do
      expect(ayo.user).to eq 'Ayo'
    end
  end
end
