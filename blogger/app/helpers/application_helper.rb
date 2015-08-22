module ApplicationHelper

end

def article_params
        params.require(:article).permit(:title, :body)
end
