require "spec_helper"

describe String do
  describe "#<<" do
    example "文字追加" do
      s = "ABC"
      s << nil
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
