require 'spec_helper'

describe "inbound_emails/index" do
  before(:each) do
    assign(:inbound_emails, [
      stub_model(InboundEmail,
        :text => "MyText",
        :html => "MyText",
        :to => "To",
        :from => "From",
        :subject => "Subject"
      ),
      stub_model(InboundEmail,
        :text => "MyText",
        :html => "MyText",
        :to => "To",
        :from => "From",
        :subject => "Subject"
      )
    ])
  end

  it "renders a list of inbound_emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
  end
end
