ZSH send plugin
=====

The following zsh plugin enables a really useful git shortcut:

```bash
send 'my first commit'
```

will get translated to

```bash
git add (everything in current git repository)
git commit -m 'my first commit'
git pull origin (the current git branch)
git push origin (the current git branch)
```

That is, by writing `send`, we are able to add our changes, submit a commit,
pull from upstream (by default, the remote `origin`) and then push upstream.
Frequently, developers write out this workflow in full hundreds of times a
day, so this is a useful time-saving technique.

Installation
--------

Assuming you have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), you can
simply write

```bash
cd ~/.oh-my-zsh/custom/plugins
git clone git@github.com:robertzk/send.zsh.git
echo "plugins+=(send)" >> ~/.zshrc
```

(Alternatively, you can place the `send` plugin in the `plugins=(...)` local manually.)

If you use the non-recommended alternative, bash, you can install this directly to your `~/.bash_profile`:

```bash
curl -s https://raw.githubusercontent.com/robertzk/send.zsh/master/send.plugin.zsh >> ~/.bash_profile
```
