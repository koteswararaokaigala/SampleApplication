require 'rails_helper'

RSpec.describe Dog, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe '#bark' do
  	it 'hello the "Woof!"' do
  		expect(subject.bark).to eql('Woof!')
  end
  end
end
