require "gress"
require "gress/plugin/html_loader"

describe Gress::Plugin::HtmlLoader do
  it "test" do
    allow(Dir).to receive(:glob) { ["test.html"] }
    allow(File).to receive(:read) { "test" }
    Gress::Plugin::HtmlLoader.new(nil, nil, nil).run

    params = Gress::Context.params
    expect(params).not_to be_nil
    expect(params.keys).to eq([:html_test])
    expect(params[:html_test]).to eq("test")
  end
end
