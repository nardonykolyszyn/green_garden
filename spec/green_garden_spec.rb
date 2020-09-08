# frozen_string_literal: true

RSpec.describe GreenGarden do
  describe '::VERSION' do
    it 'has a version number' do
      expect(GreenGarden::VERSION).not_to be nil
    end
  end

  describe '::Tree' do
    let(:graph_one) { load_fixture('BreweriesMaster.json') }
    let(:graph_two) { load_fixture('BreweriesSample1.json') }
    let(:graph_three) { load_fixture('BreweriesSample4.json') }

    let(:invalid_dataset_path) { Pathname.new('invalid/dataset.json').to_s }

    context 'when invalid datasets are passed' do
      it 'shows a custom error message when files do not exist' do
        expect { GreenGarden::Tree.diff_between(invalid_dataset_path, invalid_dataset_path) }.to raise_error(GreenGarden::Tree::DatasetNotFound)
      end
    end

    context 'when datasets are equal' do
      it 'returns true as success response' do
        expect(GreenGarden::Tree.diff_between(graph_one, graph_two)).to be true
      end
    end

    context 'when datasets are different' do
      it 'returns false as a failure response' do
        expect(GreenGarden::Tree.diff_between(graph_one, graph_three)).to be false
      end
    end
  end
end
