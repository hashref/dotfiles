# ssh-agent

This stow will install all the necessary configs for running `ssh-agent` in my Debian systems.

## Installing Config

The following commands will install and starting the ssh-agent.

```bash
stow ssh-agent
systemctl --user daemon-reload
systemctl --user start ssh-agent.service
systemctl --user enable ssh-agent.service
```

## Finalizing Config

There is are some other changes that can't be handled by `stow`.

  - Update PAM to read from the user `.pam.environment` file on login
  - Have `ssh` add the identities to `ssh-agent` when a successful password is entered.

```bash
sudo echo "session required pam_env.so readenv=0 user_readenv=1" >> /etc/pam.d/common-session
echo 'AddKeysToAgent yes' >> ~/.ssh/config
```
