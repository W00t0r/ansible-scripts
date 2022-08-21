# ansible-scripts
My collection of ansible scripts to setup tools after a fresh installation.

## Usage
To preview the results of running the playbooks, you can run it in a Docker container.
To start and enter the container:
`docker-compose build`
`docker-compose up -d`
`docker-compose exec ansible bash`

Inside the container we can run the playbooks now. To run them all:
`ansible-playbook -K playbooks/zsh/*.yml`

After the setup is finished start zsh to check out the new setup.
To check out astronvim, simply start neovim with `nvim`.
