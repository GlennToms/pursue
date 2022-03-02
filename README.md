# purse

A wrapper around grep to avoid typing common patterns.

It is also it is a `bash` clone of [https://github.com/tomnomnom/gf](https://github.com/tomnomnom/gf)

## What? Why?
I'm getting started in `Bug Bounties` and `Capture The Flag` and watching an interview with `tomnomnom` I wanted to remake its go tool `gf` so I would be able to customize it to more fit my needs.

## Pattern Files

The pattern definitions are stored in `/opt/pursue/config/` as little JSON files that can be kept under version control:

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

## Auto Complete

There's an auto-complete script included, so you can hit 'tab' to show you what your options are:

```
▶ purse --<tab>
--base64    --debug-pages    --fw    --php-curl    --php-errors    --php-sinks    --php-sources    --sec    --takeovers    --urls
```

### Bash

To get auto-complete working you need to `source` the `purse-completion.sh` file in your `.bashrc` or similar:

```
▶source ~/path/to/purse_completion.bash
or run the installer.
```

## Install

Run `install.sh`
```
▶ git clone https://github.com/GlennToms/pursue.git
▶ cd pursue
▶ chmod +x ./install.sh
▶ ./install.sh
```

The patterns included might not be very useful to you, but hopefully they're still a reasonable point of reference.

## Contributing

I'd actually be most interested in new pattern files! If you've got something you regularly grep for then feel free to issue a PR to add new pattern files to the examples' directory.

Bug fixes are also welcome as always :)
