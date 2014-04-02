require 'spec_helper'

describe "inbound_emails/show" do
  before(:each) do
    @inbound_email = assign(:inbound_email, stub_model(InboundEmail,
      :text => "MyText",
      :html => "MyText",
      :to => "To",
      :from => "From",
      :subject => "Subject"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/To/)
    rendered.should match(/From/)
    rendered.should match(/Subject/)
  end
end
