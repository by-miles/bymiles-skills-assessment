# Testing Skill Assessment (Infrastructure as Code pairing)
## Objective
1. To create a Github Pull Request fixing some issues with an existing Terraform module to get a AWS DynamoDb table running on pay per request billing mode.

## Guidelines/Requirements
1. You will need to use Visual Studio Code and be logged in to join a [Visual Studio Live Share](https://visualstudio.microsoft.com/services/live-share/) session so that you can pair together with an engineer at By Miles 
1. You will be using Terraform 0.11x and 0.12x and the AWS provider
1. The exercise will focus on both the Terraform knowledge, module implementation and backwards compatability along with quality of Github Pull Request

## Helpful Commands and Knowledge

- We use aws-vault to help keep our credentials secure, the terminal should be setup so that you can just run normal terraform commands.
- PAY_PER_REQUEST is only available in aws provider version 3.68.0