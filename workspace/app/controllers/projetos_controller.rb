class ProjetosController < ApplicationController
    
    before_action :authenticate_user!
    
    def project
        @title = 'Projetos cadastrados';
        @content = 'lista de projetos';
    end
    
    def index
        @projs = Projeto.all
    end
    
    def show
        @proj = Projeto.find(params[:id])
    end
    
    def new
        @proj = Projeto.new
    end
    
    def create
        #render plain: params[:usuario].inspect
        
        @proj = Projeto.new(post_params)
        
        if(@proj.save)
            redirect_to @proj
        else
            render 'new'
        end
    end
    
    def edit
         @proj = Projeto.find(params[:id])
    end
    
    def update
        @proj = Projeto.find(params[:id])
        
        if(@proj.update(post_params))
            redirect_to @proj
        else
            render 'edit'
        end
    end
    
    def destroy
        @proj = Projeto.find(params[:id])
        @proj.destroy
        
        redirect_to projetos_path
    end
    
    private def post_params
        params.require(:projeto).permit(:title, :description, :deadline)
        
    end
end
