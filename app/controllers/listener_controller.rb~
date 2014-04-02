class ListenerController < ApplicationController
  
    skip_before_filter :verify_authenticity_token

    def receive_email
      @params = params
      #make sure request is a post
      @inbound_email = InboundEmail.new(:text => params["text"],
                              :html => params["html"],
                              :to => clean_field(params["to"]),
                              :from => clean_field(params["from"]),
                              :subject => clean_field(params["subject"])                  )

      respond_to do |format|
         if @inbound_email.save && request.post?
           @inbound_email.process_incoming_email
           flash[:notice] = 'Item was successfully created. '
           format.xml  { render :xml => @inbound_email, :status => :created }
        else
           flash[:notice] = "Oops, we had an error saving the item."
           format.xml  { render :xml => @inbound_email.errors, :status => :unprocessable_entity }
         end
       end
      end
     
     private
     def clean_field(input_string)
         input_string.gsub(/\n/,'') if input_string
     end
end
