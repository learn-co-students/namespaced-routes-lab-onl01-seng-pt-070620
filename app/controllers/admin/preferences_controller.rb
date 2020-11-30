class Admin::PreferencesController < ApplicationController

    def index
    end 

    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(song_params)

        if @song.save
            redirect_to @song
        else
            render :new
        end
    end

    def show
        @song = Song.find_by(id: params[:id])
    end 

    def edit
    end 
end 