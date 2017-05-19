class PagesController < ApplicationController
  def home
  end

  def inscription
  end

  def admin
    @teacher_attente = Teacher.where(role: "attente")
  end

  def prof
    @prof = set_current_teacher
  end

  def connexion
    if (params[:nom] != '') && (params[:email] != '') && (params[:password] != '')
      @admin = Administrateur.where(nom: params[:nom], email: params[:email], password: params[:password]).first
      @prof = Teacher.where(surname: params[:nom], email: params[:email], password: params[:password], role: "accepte").first
      if @admin
        redirect_to '/pages/admin'
      else
        if @prof
          session[:id_teacher]=@prof.id
          redirect_to '/pages/prof'
        else
          flash[:info] = "Vous n'êtes pas inscrit ou l'administrateur n'a pas accepté votre compte."
          redirect_to '/pages/home'
        end
      end
    else
      flash[:info] = "incorrect"
      redirect_to '/pages/home'
    end
  end

  def inscrire
    if (params[:nom] != '') && (params[:email] != '') && (params[:password] != '') && (params[:prenom] != '')
      Teacher.create(surname: params[:nom], name: params[:prenom], email: params[:email], password: params[:password], role: "attente")
      flash[:info] = "Votre demande a bien été prise en compte"
      redirect_to '/pages/home'
    else
      flash[:info] = "incorrect"
      redirect_to '/pages/inscription'
    end
  end

  def accepter
    Teacher.find(params[:id]).update(role: "accepte")
    redirect_to '/pages/admin'
  end

  def refuser
    Teacher.find(params[:id]).destroy
    redirect_to '/pages/admin'
  end

  def set_current_teacher
    if session[:id_teacher]
      @current_teacher = Teacher.find(session[:id_teacher])
    end
  end
end
