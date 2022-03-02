# purse

A wrapper around grep to avoid typing common patterns.

It is also it is a `bash` clone of [https://github.com/tomnomnom/gf](https://github.com/tomnomnom/gf)

<br>
<br>
## What? Why?
I'm getting started in `Bug Bounties` and watching an interview with `tomnomnom` I wanted to remake its go tool `gf` so I would be able to customize it to more fit my needs.

### Pattern Files

The pattern definitions are stored in `~/.gf` as little JSON files that can be kept under version control:

```

▶ purse --php-sources.json
{
    "flags": "-HnrE",
    "pattern": "(\\$_(POST|GET|COOKIE|REQUEST|SERVER|FILES)|php://(input|stdin))"
}
```

To help reduce pattern length and complexity a little, you can specify a list of multiple patterns too:

```
▶ purse --php-sources-multiple
{
    "flags": "-HnrE",
    "patterns": [
        "\\$_(POST|GET|COOKIE|REQUEST|SERVER|FILES)",
        "php://(input|stdin)"
    ]
}
```

There are many more example pattern files in the `examples` directory.

### Auto Complete

There's an auto-complete script included, so you can hit 'tab' to show you what your options are:

```
▶ purse --<tab>
base64       debug-pages  fw           php-curl     php-errors   php-sinks    php-sources  sec          takeovers    urls
```

#### Bash

To get auto-complete working you need to `source` the `gf-completion.bash` file in your `.bashrc` or similar:

```
source ~/path/to/purse_completion.bash
```

## Install

Run `install.sh`
```
▶ git clone 
```

If you've installed using `go get`, you can enable auto-completion to your `.bashrc` like this:

```
▶ echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
```

Note that you'll have to restart your terminal, or run `source ~/.bashrc` for the changes to
take effect.

To get started quickly, you can copy the example pattern files to `~/.gf` like this:

```
▶ cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
```

My personal patterns that I've included as examples might not be very useful to you, but hopefully
they're still a reasonable point of reference.

## Contributing

I'd actually be most interested in new pattern files! If you've got something you regularly grep for
then feel free to issue a PR to add new pattern files to the examples directory.

Bug fixes are also welcome as always :)
