# Sgn

## Instalation
```ruby
gem install sgn
require 'sgn'
```

## Usage

```ruby
customer_number   = "001"
customer_password = "118576708972562"

ws = Sgn::Webservice.new(customer_number, customer_password)
ws.get('busca_imoveis2', { 'itenspp' => 1 })

# {
#   'total' => 3,
#   'num_pags' => 3,
#   'imoveis' => {
#     '0' => {
#       'ref'                   => '0092',
#       'preco'                 => '1.00',
#       'tipo'                  => 'Sobrado',
#       'cidade'                => 'OSASCO'
#       'bairro'                => 'QUITAÃšNA'
#       'dormitorios'           => nil,
#       'suite'                 => nil,
#       'garagem'               => nil,
#       'descricao'             => 'dgdsggsdsg SOBRADO LINDO',
#       'area_util'             => nil,
#       'area_construida'       => nil,
#       'area_terreno'          => nil,
#       'finalidade'            => 'L',
#       'cond_fechado'          => 'N',
#       'saldo_devedor'         => 'N',
#       'uso_imovel'            => 'R',
#       'fotos' => [
#         'http://www.sgn2.com.br/clientes/customer/loc/pic1.jpg',
#         'http://www.sgn2.com.br/clientes/customer/loc/pic2.jpg'
#       ],
#       'destaque'              => 'N',
#       'plantao'               => 'N',
#       'video_youtube'         => nil,
#       'placa'                 => 'N',
#       'permuta'               => 'N',
#       'iptu'                  => nil,
#       'valor_sem_bonificacao' => 1,
#       'regiao'                => nil,
#       'endereco'              => 'RUA JEQUIE, 12',
#       'banheiros'             => nil,
#       'titulo_anuncio'        => nil,
#       'caracteristicas'       => nil,
#       'opcao'                 => 0,
#       'corretores'            => { '0' => nil, '1' => nil }
#     }
#   }
# }

```

## Author
Marcelo Jacobus