NASP-RAILS - Tratando o NASP com Ruby On Rails
====================================================

A NASP-RAILS implementa o tratamento dos dados enviados do NASP via POST salvando em seu banco de dados local.

Na Gemfile é possível ver que a implementação apresentada usa como banco de dados para desenvolvimento o SQLite3 e modo produção o PostgreSQL.

Para testar a aplicação no NASP basta configurar a URL de envio para http://meusite.com/nasp_rails

Como testar:
    1) Clone o repositório para sua máquina
    2) Entre na pasta do nasp-rails
    3) $ rake db:migrate
    4) $ rails s
    5) Vá no browser e confira em http://127.0.0.1/nasp_rails a App

Caso o teste acima funcione será preciso subir a aplicação em uma máquina com IP público, ou seja, visível para o servidor do NASP se comunicar e testar através do site do MoIP: http://labs.moip.com.br

Licença
-------

Copyright (c) 2011, João Víctor Rocon Maia All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution. Neither the name of the MoIP nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
