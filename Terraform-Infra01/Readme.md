# Terraform-Infra01

Este repositório contém a configuração de infraestrutura como código utilizando Terraform, seguindo as melhores práticas para provisionamento de recursos na AWS. Abaixo estão os principais pontos abordados neste projeto:

## Recursos Provisionados

1. **Filas (SQS)**
  Configuração e provisionamento de filas na AWS para processamento assíncrono de mensagens.

2. **Bucket S3**
  Provisionamento de buckets S3 para armazenamento de dados.

3. **Tabela DynamoDB**
  Configuração de uma tabela DynamoDB para ser utilizada como backend remoto para o estado do Terraform (state locking).

## Melhores Práticas Adotadas

- Organização modular do código Terraform.
- Uso de variáveis para facilitar a reutilização e personalização.
- Configuração de `remote-backend` para armazenar o estado do Terraform de forma segura e compartilhada.
- Implementação de state locking com DynamoDB para evitar conflitos durante alterações simultâneas.

## Remote Backend

O backend remoto foi configurado utilizando:
- **S3**: Para armazenar o arquivo de estado do Terraform.
- **DynamoDB**: Para realizar o bloqueio de estado (state locking), garantindo que apenas uma operação seja executada por vez.

## Comandos Úteis

### Inicializar o Terraform
```bash
terraform init
```

### Criar ou Atualizar a Infraestrutura
```bash
terraform apply
```

### Destruir a Infraestrutura
```bash
terraform destroy
```

### Gerenciar Workspaces
Criar um novo workspace:
```bash
terraform workspace new <nome-do-workspace>
```

Listar workspaces:
```bash
terraform workspace list
```

Selecionar um workspace existente:
```bash
terraform workspace select <nome-do-workspace>
```

### Validar e Planejar
Validar a configuração:
```bash
terraform validate
```

Gerar um plano de execução:
```bash
terraform plan
```

## Estrutura do Repositório

- `main.tf`: Configuração principal do Terraform.
- `variables.tf`: Definição de variáveis utilizadas no projeto.
- `outputs.tf`: Saídas configuradas para exibir informações úteis após o provisionamento.
- `modules/`: Diretório contendo módulos reutilizáveis.

## Pré-requisitos

- Terraform instalado na máquina local.
- Credenciais configuradas para acesso à AWS.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.
