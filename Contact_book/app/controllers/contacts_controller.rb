class ContactsController < ApplicationController

	def index
		@contacts_list = Contact.all
	end

	def new
		my_id = params[:id]

		@contacts = Contact.find_by(id: my_id)
		@new_contact = @contacts.entries.new
		render("new")
	end
end
