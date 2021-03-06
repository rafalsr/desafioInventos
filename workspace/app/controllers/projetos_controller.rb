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
    #render plain: params[:projeto].inspect
        
        @proj = Projeto.new(post_params)
        
        if(@proj.save)
            
            #slack_notifier.ping("Novo projeto adicionado: " + @proj.title)
            
            #if @proj.bug.length != 0
            #    bug_description = @proj.bug
            #end
            
            a_project_add = {
              fallback: "Atenção Aviso a todos sem exceção",
              text: "Everything looks peachy",
              color: "danger",
              author_name: current_user,
              title: "bug_description",
              title_link: "https://desafio-rafalsr.c9users.io/projetos"
            }
            
            notifier.post text: "Novo projeto adicionado: \n"+ "<https://desafio-rafalsr.c9users.io/projetos|Click here> for details!", attachments: [a_project_add] 
            
            
            redirect_to @proj
        else
            render 'new'
        end
    end
    
    def edit
        @bug = Projeto.find(params[:id]).bugs
        
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
        params.require(:projeto).permit(:title, :description, :deadline, :bug_id)
        
    end
    
    private def slack_notifier
      #  Slack::Notifier.new "https://hooks.slack.com/services/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" do
      #     defaults channel: "#canal-rafael-lima", 
      #      username: "Rafael",
      #       attachments:[{
      #                      color: "good"
      #      }]
      #  end
    end
end
