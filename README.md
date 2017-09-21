## Caso você seja preguiçoso:
Só execute o arquivo `openPyspark.sh` assim:
```bash
$ source openPyspark.sh
```

## Configurando o ambiente
#### Instale o virtualenv se não tiver instalado (ou equivalente)
```bash
$ pip install --user virtualenv
```
#### Coloque a pasta $HOME/.local/bin no path
Coloque manualmente, ou rode o comando abaixo.
Lembre-se de trocar o .bashrc para o perfil do seu terminal.
```bash
$ echo "export PATH=$PATH:$HOME/.local/bin" >> .bashrc
```
#### Instalando o virtualenv
Crie uma pasta para a disciplina (ou navegue até ela se já tiver criado)
Com o virtualenv instalado, crie um ambiente virtual `python3.5` (_ou `python3.X` que você tiver instalado_)
Lembre-se de trocar `pyspark-env` pelo nome desejado do virtualenv
```bash
$ virtualenv pyspark-env -p python3.5
```
Uma pasta chamada `pyspark-env` será criada no diretório atual

#### Entrando no ambiente virtual
Para ativar o ambiente virtual, rode
```bash
$ source pyspark-env/bin/activate
(pyspark-env) $ _
```
O seu terminal irá ter (`pyspark-env`) antes de tudo, significa que você está no ambiente virtual
Para sair do ambiente virtual (faça sempre que for parar de mexer no projeto) rode
```bash
(pyspark-env) $ deactivate
$ _
```

#### Instalando o pyspark
Entre novamente no ambiente virtual e instale o `pyspark`
```bash
$ source pyspark-env/bin/activate
(pyspark-env) $ pip install pyspark
```

## Executando o pyspark
Com o `pyspark` instalado, para abrir o shell execute:
```bash
$ source pyspark-env/bin/activate
(pyspark-env) $ ./pyspark-env/lib/site-packages/pyspark/bin/pyspark
```

**Pronto, você está no terminal python do pyspark.**

Lembre-se de sair do terminal do pyspark e sair do ambiente virtual

E bora codar
