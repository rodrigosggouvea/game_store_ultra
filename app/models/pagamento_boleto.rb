class PagamentoBoleto
	def pagar(params)
		redirect_to gerar_boleto_users_path(params)
	end
end