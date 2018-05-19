module Formtastic
  module Inputs
    class JsonInput < Formtastic::Inputs::StringInput
      def to_html
        self.object.send("#{method}=", JSON.generate(self.object.send(method)))
        super
      end
    end
  end
end
