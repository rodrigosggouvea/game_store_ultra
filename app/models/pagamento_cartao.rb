class PagamentoCartao
	def pagar(params)
		redirect_to pagamento_cartao_users_path(params)
	end
end