# ssh config file

```
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  User git
  IdentityFile ~/.ssh/id_ed25519
```

## Multiple account for same Host

Frist try 

```
ssh-agent
```

If the above option is unsuccessful, then list all the ssh keys added so far and remove the wrong ones.

```
ssh-add -l
ssh-add -d private/key/path
```
