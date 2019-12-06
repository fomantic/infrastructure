# Fomantic Infrastructure

[![GitHub Actions Status](https://github.com/fomantic/infrastructure/workflows/Terraform/badge.svg)](https://github.com/fomantic/infrastructure/actions)

This repository contains the terraform configuration files to setup the fomantic infrastructure.

> This repository is incomplete because of some limitations of Terraform and our tooling however we will continue to add to this repository to complete our goal of being 100% open source.

#### Infrastructure
 - [Fomantic](modules/fomantic)
   - [dns](modules/fomantic/dns)
     - [fomantic.com](modules/fomantic/dns/fomantic.com.tf)
     - [fomantic.dev](modules/fomantic/dns/fomantic.dev.tf)
     - [fomantic.org](modules/fomantic/dns/fomantic.org.tf)
     - [fomantic-ui.com](modules/fomantic/dns/fomantic-ui.com.tf)
     - [fomantic-ui.dev](modules/fomantic/dns/fomantic-ui.dev.tf)
     - [fomantic-ui.org](modules/fomantic/dns/fomantic-ui.org.tf)
   - [github](modules/fomantic/github)
     - [hooks](modules/fomantic/github/hooks.tf)
     - [members](modules/fomantic/github/members.tf)
     - [repositories](modules/fomantic/github/repositories.tf)
     - [teams](modules/fomantic/github/teams.tf)
 - [Semantic](modules/semantic) 
   - [dns](modules/semantic/dns)
     - [semantic-ui.dev](modules/semantic/dns/semantic-ui.dev.tf)
