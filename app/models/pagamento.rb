class Pagamento
  def initialize(classe_pagamento)
    @classe_pagamento = classe_pagamento
  end

  def pagar
    @classe_pagamento.pagar
  end
end