# Integração Supabase - MONITORAMENTO

Este diretório contém a configuração e estrutura do projeto Supabase integrado com GitHub.

## Informações do Projeto

- **Project ID:** xvfybuhkairjiapvlxlv
- **Região:** sa-east-1 (São Paulo)
- **Status:** ACTIVE_HEALTHY
- **Banco de Dados:** PostgreSQL 17.6.1
- **URL da API:** https://xvfybuhkairjiapvlxlv.supabase.co

## Estrutura de Diretórios

```
supabase/
├── config.toml          # Configuração do projeto
├── migrations/          # Migrations do banco de dados
│   └── 20251105175042_create_products_table.sql
├── functions/           # Edge Functions (serverless)
└── config/             # Configurações adicionais
```

## Migrations

As migrations são versionadas e aplicadas automaticamente ao banco de dados. Para criar uma nova migration:

1. Use o Supabase CLI ou a ferramenta MCP
2. Nomeie o arquivo no formato: `YYYYMMDDHHMMSS_description.sql`
3. Faça commit e push para o repositório

### Migration Atual

- **20251105175042_create_products_table.sql**: Cria a tabela `produtos` com campos id, nome e preco

## Edge Functions

Atualmente não há Edge Functions configuradas. Para adicionar uma:

1. Crie um diretório em `functions/` com o nome da função
2. Adicione o arquivo `index.ts` com o código da função
3. Use o comando de deploy via MCP ou Supabase CLI

## Sincronização

Este repositório está sincronizado com o projeto Supabase. Todas as alterações devem ser versionadas aqui antes de serem aplicadas ao ambiente de produção.

## Como Usar

### Aplicar Migrations Localmente

```bash
supabase db push
```

### Deploy de Edge Functions

```bash
supabase functions deploy <function-name>
```

### Verificar Status

```bash
supabase status
```

## Notas Importantes

- Sempre teste migrations em um ambiente de desenvolvimento antes de aplicar em produção
- Use branches do Git para desenvolver novas features
- Mantenha o `config.toml` atualizado com as configurações do projeto
