# coding: utf-8
require './ltsv'

describe Ltsv do
  it 'ヘッダ込みで行をparseできる' do
    data = <<-EOS
"名前","コメント"
"suchi","ATNDer(仕事の都合で直前にキャンセルの可能性があります)"
    EOS
    Ltsv.read_atnd(data).should == [{'名前' => 'suchi', 'コメント' => 'ATNDer(仕事の都合で直前にキャンセルの可能性があります)'}]
  end
end