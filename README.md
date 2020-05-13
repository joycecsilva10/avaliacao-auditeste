# Auditeste

Cucumber, Capybara e Ruby, usando o conceito de Pages Object. Não temos nenhum Sleep fixo no projeto, tudo é feito de forma dinâmica, alguns parâmetros são passado via o comando do cucumber no cmd ou shell e os outros estão na tabela na feature, como boa prática.
Procurei deixar o projeto relativamente simples.

## 1. Instalação das Gems é necessário instalar primeiro o bundler

    To install bundler type:

        gem install bundler

## Gems instaladas

Gems necessário para rodar os testes: source 'https://rubygems.org'

gem "capybara"
gem 'cucumber'
gem "rspec"
gem "selenium-webdriver"
gem 'site_prism'

## TAGS Para executar os planos isoladamente:
@loginSucesso
@dadosInvalidos
@dadosObrigatorios

## Exemplo:
cucumber --tag @loginSucesso

## Para executar todo o projeto executar
cucumber

