require 'spec_helper'
require_relative '../merge_sort'

RSpec.describe 'Merge sort' do
  it 'sorts numbers' do
    expect(merge_sort([4,8,1,7,2])).to eq [1,2,4,7,8]
  end

  it 'sorts strings' do
    expect(merge_sort(%w{d c b a})).to eq %w{a b c d}
  end
end