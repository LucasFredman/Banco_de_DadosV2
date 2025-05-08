# Banco_de_DadosV2
Modelo de Banco de Dados - Cafeteria Delícia
Entidades:
produtos

id (inteiro, chave primária)

nome (texto)

preco (decimal)

descricao (texto)

pedidos

id (inteiro, chave primária)

produto_id (inteiro, chave estrangeira para produtos)

quantidade (inteiro)

data_pedido (data/hora)

