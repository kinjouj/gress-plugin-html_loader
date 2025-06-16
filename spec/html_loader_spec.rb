require "gress/plugin/html_loader"

describe Gress::Plugin::HtmlLoader do

  before do
    Gress::Context.finish
  end

  it "test" do
    allow(Dir).to receive(:glob) {
      [ File.expand_path("../test.html", __FILE__) ]
    }
    Gress::Plugin::HtmlLoader.new.run(:html)
    expect(Gress::Context[:html_test]).to start_with("test")
  end

  it "run argument :json" do
    Gress::Plugin::HtmlLoader.new.run(:json)
    expect { Gress::Context[:html_test] }.to raise_error("html_test missing")
  end
end
