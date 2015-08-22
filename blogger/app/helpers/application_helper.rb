module ApplicationHelper
    def article_params
        params.require(:article).permit(:titlem, :body)
    end
end
