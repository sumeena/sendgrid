require 'spec_helper'

describe "inbound_emails/new" do
  before(:each) do
    assign(:inbound_email, stub_model(InboundEmail,
      :text => "MyText",
      :html => "MyText",
      :to => "MyString",
      :from => "MyString",
      :subject => "MyString"
    ).as_new_record)
  end

  it "renders new inbound_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inbound_emails_path, "post" do
      assert_select "textarea#inbound_email_text[name=?]", "inbound_email[text]"
      assert_select "textarea#inbound_email_html[name=?]", "inbound_email[html]"
      assert_select "input#inbound_email_to[name=?]", "inbound_email[to]"
      assert_select "input#inbound_email_from[name=?]", "inbound_email[from]"
      assert_select "input#inbound_email_subject[name=?]", "inbound_email[subject]"
    end
  end
end
