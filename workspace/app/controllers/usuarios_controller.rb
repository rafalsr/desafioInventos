class UsuariosController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @users = Usuario.all
    end
    
    def show
        @post = Usuario.find(params[:id])
    end
    
    def new
        @post = current_user.usuarios.build
        #Usuario.new
    end
    
    def create
        #render plain: params[:usuario].inspect
        
        @post = current_user.usuarios.build(post_params)
        #Usuario.new(post_params)
        
        if(@post.save)
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def edit
         @post = Usuario.find(params[:id])
    end
    
    def update
        @post = Usuario.find(params[:id])
        
        if(@post.update(post_params))
            redirect_to @post
        else
            render 'edit'
        end
    end
    
    def destroy
        @post = Usuario.find(params[:id])
        @post.destroy
        
        redirect_to usuarios_path
    end
    
    private def post_params
        params.require(:usuario).permit(:name, :email, :age, :password, :cargo)
        
    end
end
