class ArticlesController < ActionController::Base
  def index #it will list all the article
    @article = Article.all
    @article1 = Article.new
  end

  def show #it will show all the articles with corresponding to it's id
    @article1 = Article.find(params[:id])
  end

  def new  #instantiating article so that POST operation can be done
    @article=Article.new
  end

  def edit # it will fetch one article with the id. It is just for showing the content
    @article = Article.find(params[:id])
  end

  def update # It will find article and update the article
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)  # Redirects to show.html.rb
  end

  def create #Create new article i.e. POST Operation
    @article = Article.new(article_params)
    puts "Inside create"

    puts "#{@article.title}"
    puts "#{@article.description}"


    if @article.save
      redirect_to article_path(@article) #show.html.erb
    else
      render "new"
    end  # Redirects to index.html.rb
  end

  def destroy # it will find the article and delete it i.e. DELETE operation
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path # redirect to index.html.rb
  end

  private
  def article_params #The .permit method is used to specify which attributes of the "article" parameters are allowed to be updated.
    params.require(:article).permit(:title, :description)
  end
end