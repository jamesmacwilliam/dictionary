require_relative '../spec_helper'

describe Dictionary::Sequencer do
  let(:file_path) { get_file_path }
  let(:sequencer) { Dictionary::Sequencer.new(file_path) }
  let(:expected_output) do
    {
      'dles' => 'wordlessness',
      'essn' => 'wordlessness',
      'less' => 'wordlessness',
      'ness' => 'wordlessness',
      'ordl' => 'wordlessness',
      'ordy' => 'wordy',
      'rdle' => 'wordlessness',
      'snes' => 'wordlessness',
      'ssne' => 'wordlessness',
    }
  end

  it 'parses file' do
    expect(sequencer.sequences).to eq expected_output
  end

  context '#console_out' do
    it 'outputs header' do
      sequencer.stub(:puts).as_null_object
      expect(sequencer).to receive(:puts).once.ordered.with("'sequences'     'words'")
      sequencer.console_out
    end

    it 'outputs sequences' do
      sequencer.stub(:puts).as_null_object
      expect(sequencer).to receive(:puts).once.ordered.with("'sequences'     'words'")
      sequencer.console_out
    end
  end
end
