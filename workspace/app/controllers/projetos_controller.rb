class ProjetosController < ApplicationController
    
    before_action :authenticate_user!
    
    def project
        @title = 'Projetos cadastrados';
        @content = 'lista de projetos';
    end
    
end
