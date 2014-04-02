require 'spec_helper'

describe "inbound_emails/edit" do
  before(:each) do
    @inbound_email = assign(:inbound_email, stub_model(InboundEmail,
      :text => "MyText",
      :html => "MyText",
      :to => "MyString",
      :from => "MyString",
      :subject => "MyString"
    ))
  end

  it "renders the edit inbound_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inbound_email_path(@inbound_email), "post" do
      assert_select "textarea#inbound_email_text[name=?]", "inbound_email[text]"
      assert_select "textarea#inbound_email_html[name=?]", "inbound_email[html]"
      assert_select "input#inbound_email_to[name=?]", "inbound_email[to]"
      assert_select "input#inbound_email_from[name=?]", "inbound_email[from]"
      assert_select "input#inbound_email_subject[name=?]", "inbound_email[subject]"
    end
  end
end
