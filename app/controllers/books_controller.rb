class BooksController < ApplicationController
	def index
		@books = Book.all
		respond_to do |format|
			format.html
			format.text
			format.csv do
				render plain: Book.generate_csv(@books)
			end
			format.json
		end
	end

end
