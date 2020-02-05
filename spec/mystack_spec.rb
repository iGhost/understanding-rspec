require 'mystack'

RSpec.describe MyStack do
  it 'should be empty by default' do
    expect(subject).to be_empty
  end
  it 'should have zero size' do
    expect(subject.size).to eq(0)
  end
  it 'should have method push to store data in stack' do
    expect(subject).to respond_to(:push)
  end
  it 'should increase size by 1 when 1 piece of data is stored' do
    subject.push(10)
    expect(subject.size).to eq(1)
  end
  it 'should have empty method that clears the stack' do
    subject.clear
    expect(subject).to be_empty
  end
  it 'should have method pop to get data from stack' do
    expect(subject).to respond_to(:pop)
  end
  it 'pop should return data from stack' do
    push_data = 123
    subject.push(push_data)
    data = subject.pop
    expect(data).to eq(push_data)
  end
  it 'should decrease size by 1 when 1 piece of data was got from stack' do
    subject.push(345)
    subject.pop
    expect(subject.size).to eq(0)
  end
  it 'should have method pick' do
    expect(subject).to respond_to(:pick)
  end
  it 'pick method should get last data from stack' do
    push_data = 234
    subject.push(push_data)
    data = subject.pick
    expect(data).to eq(push_data)
  end
  it 'size of stack should not decrease after pick' do
    subject.push(123)
    subject.pick
    expect(subject.size).to eq(1)
  end
end
