# frozen_string_literal: true

RSpec.describe GreenGarden do
  describe '::VERSION' do
    it 'has a version number' do
      expect(GreenGarden::VERSION).not_to be nil
    end
  end

  describe '::Tree' do
    let(:graph_one) { GreenGarden::Tree.load_json(load_fixture('BreweriesMaster.json')) }
    let(:graph_two) { GreenGarden::Tree.load_json(load_fixture('BreweriesSample1.json')) }

    let(:invalid_dataset_path) { Pathname.new('invalid/dataset.json').to_s }
    context 'when invalid datasets are passed' do
      it 'shows a custom error message when files do not exist' do
        expect { GreenGarden::Tree.diff_between(invalid_dataset_path, invalid_dataset_path) }.to raise_error(GreenGarden::Tree::DatasetNotFound)
      end
    end
  end
end
