class PedsController < ApplicationController
  def index
    result = Peds::Client.search_by(firstNamedApplicant: "canon")
    @docs = result[:body][:queryResults][:searchResponse][:response][:docs]
  end
end
