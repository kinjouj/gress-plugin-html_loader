require "gress/plugin/html_loader"

describe Gress::Plugin::HtmlLoader do
  it "test" do
    allow(Dir).to receive(:glob) {
      [ File.expand_path("../test.html", __FILE__) ]
    }
    Gress::Plugin::HtmlLoader.new.run("html")

    params = Gress::Context.params
    expect(params).not_to be_nil
    expect(params).to include(:html_test)
    expect(params[:html_test]).to match(/^test/)
  end
end
