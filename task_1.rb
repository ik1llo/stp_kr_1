require "rspec"

def calculate_average_value (array)
  return 0.0 if array.empty?
  array.sum.to_f / array.size
end

RSpec.describe "calculate_average_value" do
  it "returns 0.0 if the array is empty" do
    expect(calculate_average_value([])).to eq(0.0)
  end

  it "returns 3.0 if the array looks like [1, 2, 3, 4, 5]" do
    expect(calculate_average_value([1, 2, 3, 4, 5])).to eq(3.0)
  end

  it "returns 3.5 if the array looks like [1.0, 2.0, 3.0, 4.0, 5.0]" do
    expect(calculate_average_value([1.0, 2.0, 3.0, 4.0, 5.0])).to eq(3.0)
  end

  it "returns 3.2 if the array looks like [1, 2.5, 3, 4.5, 5]" do
    expect(calculate_average_value([1, 2.5, 3, 4.5, 5])).to eq(3.2)
  end

  it "returns -3.0 if the array looks like [-1, -2, -3, -4, -5]" do
    expect(calculate_average_value([-1, -2, -3, -4, -5])).to eq(-3.0)
  end

  it "returns -3.0 if the array looks like [-1.0, -2.0, -3.0, -4.0, -5.0]" do
    expect(calculate_average_value([-1.0, -2.0, -3.0, -4.0, -5.0])).to eq(-3.0)
  end

  it "returns 3.0 if the array looks like [1, 2.0, 3, 4.0, 5]" do
    expect(calculate_average_value([1, 2.0, 3, 4.0, 5])).to eq(3.0)
  end

  it "returns -3.0 if the array looks like [-1, -2.0, -3, -4.0, -5]" do
    expect(calculate_average_value([-1, -2.0, -3, -4.0, -5])).to eq(-3.0)
  end

  it "returns -1.0 if the array looks like [1, -2.0, -3, 4.0, -5]" do
    expect(calculate_average_value([1, -2.0, -3, 4.0, -5])).to eq(-1.0)
  end
end