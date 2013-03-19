class PagamentoPaypal
	def pagar(params)
		redirect_to pagamento_paypal_users_path(params)
	end
end