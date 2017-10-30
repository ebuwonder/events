class AttendsController < ApplicationController

    def create
        Attend.create(attend_params)

        return redirect_to :back
    end

    def destroy

    end

    private
        def attend_params
            params.require(:attend).permit(:event_id).merge(user: current_user)
        end
end
