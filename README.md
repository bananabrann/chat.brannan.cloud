# LibreChat at chat.brannan.cloud

![Static Badge](https://img.shields.io/badge/LibreChat_docs-blue?logo=readthedocs&link=https%3A%2F%2Fdocs.librechat.ai%2Findex.html)
![Start VM Badge](https://img.shields.io/github/actions/workflow/status/bananabrann/chat.brannan.cloud/start-vm.yaml?logo=github-actions&label=start%20vm&logoColor=white)
![GitHub Issues](https://img.shields.io/github/issues/bananabrann/chat.brannan.cloud?logo=github)

This is an implementation of [LibreChat](https://github.com/danny-avila/LibreChat), a ChatGPT clone with extra features for general use for my family.

> LibreChat brings together the future of assistant AIs with the revolutionary technology of OpenAI's ChatGPT. Celebrating the original styling, LibreChat gives you the ability to integrate multiple AI models. It also integrates and enhances original client features such as conversation and message search, prompt templates and plugins.
>
> With LibreChat, you no longer need to opt for ChatGPT Plus and can instead use free or pay-per-call APIs. We welcome contributions, cloning, and forking to enhance the capabilities of this advanced chatbot platform.
>
> -- from their repo

With a self-hosted LibreChat VM, my family and I no longer need to purchase expensive, rate-limited ChatGPT Pro. 

## Installation and Setup
LibreChat is hosted on a VM and requires setup and configuration prior to use. Refer to the [LibreChat documentation](https://docs.librechat.ai/index.html) website for any details and questions.

## Useful Commands
Assuming the VM is confugred and setup correctly, these are commands that are used frequently, listed here for convenience.

### Start the VM
Trigger the GitHub Action.

### Stop the VM
Trigger the GitHub Action.

### Start Docker process
```bash
# Start the process
sudo systemctl start docker

# Confirm Docker is running
docker info
```

### Run an automated update
```bash
npm run update:deployed
```

### Stop the docker container
```bash
npm run stop:deployed
```

### Start the docker container
```bash
npm run start:deployed
```

### First-time start-up for the app
Only use this the first time; use regular `node` start commands if Docker has run before.

```bash
sudo docker-compose -f ./deploy-compose.yml up -d
```
