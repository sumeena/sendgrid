require "spec_helper"

describe InboundEmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/inbound_emails").should route_to("inbound_emails#index")
    end

    it "routes to #new" do
      get("/inbound_emails/new").should route_to("inbound_emails#new")
    end

    it "routes to #show" do
      get("/inbound_emails/1").should route_to("inbound_emails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inbound_emails/1/edit").should route_to("inbound_emails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inbound_emails").should route_to("inbound_emails#create")
    end

    it "routes to #update" do
      put("/inbound_emails/1").should route_to("inbound_emails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inbound_emails/1").should route_to("inbound_emails#destroy", :id => "1")
    end

  end
end
