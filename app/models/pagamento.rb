class Pagamento
  def initialize(classe_pagamento)
    @classe_pagamento = classe_pagamento
  end

  def pagar(params)
    @classe_pagamento.pagar(params)
  end
end