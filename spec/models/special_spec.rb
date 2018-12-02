RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        comedian = Comedian.create(name: "Mitch Hedberg", age: 55, city: "Denver,CO")
        special = comedian.specials.create(length: 67, image: "https://images.findagrave.com/photos250/photos/2017/211/2760_1501548326.jpg")
        expect(special).to_not be_valid
      end
    end
  end
end
