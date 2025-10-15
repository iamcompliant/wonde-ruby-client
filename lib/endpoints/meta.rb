module Wonde
  class Meta < Endpoints
    @@uri = 'meta/schools/'
    def initialize(token, id=false)
      super(token, id)
      self.uri = @@uri
      self.uri = id + '/' + @@uri if id
      self.uri = self.uri.gsub("//", "/")
    end
  end
end
