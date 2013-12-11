class BooksController < ApplicationController
  
  def new
  
  end
  
  

def find
 @search = Book.search do
    fulltext params[:search]
  end
  @books = @search.results   
end

  
  
  def create
   @contact=Contact.new(books_params)
       if @contact.save
          redirect_to books_contact_url
          flash[:notice] = "Contact saved successfully"
        else
          render "new"
        end 
  end


def serve
  path = "/public/data/#{params[:filename]}"

  send_file( path,
  :disposition => 'inline',
  :type => 'application/pdf',
  :x_sendfile => true )
end 




  def about
    
  end
  
  def boks
    @books = Book.order("updated_at DESC").paginate(:page => params[:page], :per_page => 7)
  end
  
  def category
    
  end
  
  def myaccount
    
  end
  
  def contact
    
  end
  
  private
  
  def books_params
    params.require(:books).permit(:id, :name, :email, :phone, :message)
  end
  
end
