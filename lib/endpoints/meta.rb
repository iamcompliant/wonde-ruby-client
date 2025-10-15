module Wonde
  class Meta < Endpoints
    @@uri = 'meta/schools/'
    def initialize(token, id=false)
      super(token, id)
      self.uri = @@uri
      self.uri = id + '/' + @@uri if id
      self.uri = self.uri.gsub("//", "/")
    end

    def permissions(id, includes = Array.new(), parameters = Array.new())
      self.uri = self.uri + '/permissions'
      return self.get(id, includes, parameters)
    end

    def acl(id, includes = Array.new(), parameters = Array.new())
      self.uri = self.uri + '/acl'
      return self.get(id, includes, parameters)
    end
  end
end
